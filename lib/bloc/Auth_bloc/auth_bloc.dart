import 'dart:developer';

import 'package:alpha/services/database.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'auth_event.dart';
part 'auth_state.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  bool userStatus = false;
  String userId = "";
  @override
  void onChange(Change<AuthState> change) {
    super.onChange(change);
    log(change.toString());
  }

  AuthBloc() : super(AuthInitial()) {
    on<AuthEvent>(
      (event, emit) async {
        if (event is RegisterEvent) {
          try {
            emit(AuthLoading());
            await FirebaseAuth.instance.createUserWithEmailAndPassword(
              email: event.email,
              password: event.password,
            );
            String id = "${event.email}-astra";
            userId = id;
            Map<String, dynamic> userInfo = {
              "name": event.name,
              "email": event.email,
              "image": "",
              "actif": false,
              "id": id,
            };

            await DatabaseMethods().addUserDetails(userInfo, id);
            emit(RegisterSuccess());
          } on FirebaseAuthException catch (e) {
            emit(RegisterFailure(error: e));
          }
        } else if (event is LoginEvent) {
          try {
            if (event.email == "admin" && event.password == "admin") {
              emit(AdminLoginSuccess());
            } else {
              emit(AuthLoading());
              userId = "${event.email}-astra";
              userStatus = await DatabaseMethods().getStatus(userId) ?? false;
              log("user status:$userStatus");
              await FirebaseAuth.instance.signInWithEmailAndPassword(
                email: event.email,
                password: event.password,
              );
              emit(LoginSuccess());
            }
          } on FirebaseAuthException catch (e) {
            emit(LoginFailure(error: e));
          }
        } else if (event is AdminLoginEvent) {
          // work here for the loginc of the admin login
          try {
            emit(AuthLoading());
            // await FirebaseFirestore.instance.collection('Admin').get().then(
            //   (snapshot) {
            //     if (snapshot.docs.first.data()['id'] == event.name.trim() &&
            //         snapshot.docs.first.data()['password'] == event.password) {
            //       emit(AdminLoginSuccess());
            //     } else {
            //       emit(LoginFailure(error: FirebaseAuthException(code: 'Invalid Credentials')));
            //     }
            //   },
            // );
          } on FirebaseAuthException catch (e) {
            emit(AdminLoginFailure(error: e));
          }
        }
      },
    );
  }
}
