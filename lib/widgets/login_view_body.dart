import 'dart:developer';

import 'package:alpha/bloc/Auth_bloc/auth_bloc.dart';
import 'package:alpha/helpers/show_snack_bar.dart';
import 'package:alpha/utils/app_router.dart';
import 'package:alpha/utils/assets.dart';
import 'package:alpha/utils/colors.dart';
import 'package:alpha/utils/styles.dart';
import 'package:alpha/widgets/custom_button.dart';
import 'package:alpha/widgets/custom_form_field.dart';
import 'package:alpha/widgets/custom_password_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class LoginViewBody extends StatefulWidget {
  const LoginViewBody({
    super.key,
  });

  @override
  State<LoginViewBody> createState() => _LoginViewBodyState();
}

class _LoginViewBodyState extends State<LoginViewBody> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AuthBloc, AuthState>(
      listener: (context, state) {
        if (state is LoginSuccess) {
          GoRouter.of(context).push(AppRouter.kHomeView);
        } else if (state is LoginFailure) {
          log(state.error.code);
          switch (state.error.code) {
            case 'invalid-credential':
              showSnackBar(context, 'Password is Incorrect');
            case 'invalid-email':
              showSnackBar(context, 'Email is Invalid');
            case 'user-not-found':
              showSnackBar(context, 'No user with this Email');
            default:
              showSnackBar(context, 'We have an Error!');
          }
        }
      },
      builder: (context, state) {
        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 32),
          child: Center(
            child: Form(
              key: formKey,
              child: SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Image.asset(
                      Assets.imagesLogoDark,
                      height: 140,
                    ),
                    const SizedBox(height: 25),
                    CustomFormTextField(
                      hintText: 'example@gmail.com',
                      controller: emailController,
                    ),
                    const SizedBox(height: 25),
                    CustomPasswordField(
                      hint: 'password',
                      controller: passwordController,
                    ),
                    const SizedBox(height: 40),
                    CustomButton(
                      bgColor: Theme.of(context).colorScheme.primary,
                      btnText: 'Log In',
                      textColor: AppColors.backgroudColor,
                      ontap: () {
                        if (formKey.currentState!.validate()) {
                          BlocProvider.of<AuthBloc>(context).add(
                            LoginEvent(
                              email: emailController.text,
                              password: passwordController.text,
                            ),
                          );
                        }
                      },
                    ),
                    const SizedBox(height: 27),
                    _buildSignUpLink(context),
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }

  Row _buildSignUpLink(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          "Don’t have an account yet? ",
          style: Styles.styleReglar14(context),
        ),
        InkWell(
          onTap: () {
            GoRouter.of(context).push(AppRouter.kRegisterView);
          },
          child: Text(
            ' Sign up here',
            style: Styles.styleReglar14(context).copyWith(
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ],
    );
  }
}
