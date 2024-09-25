import 'dart:developer';

import 'package:alpha/bloc/Auth_bloc/auth_bloc.dart';
import 'package:alpha/helpers/show_snack_bar.dart';
import 'package:alpha/utils/assets.dart';
import 'package:alpha/utils/colors.dart';
import 'package:alpha/widgets/custom_button.dart';
import 'package:alpha/widgets/custom_form_field.dart';
import 'package:alpha/widgets/custom_password_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class RegisterViewBody extends StatefulWidget {
  const RegisterViewBody({
    super.key,
  });

  @override
  State<RegisterViewBody> createState() => _RegisterViewBodyState();
}

class _RegisterViewBodyState extends State<RegisterViewBody> {
  final TextEditingController nameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AuthBloc, AuthState>(
      listener: (context, state) {
        if (state is RegisterSuccess) {
          // GoRouter.of(context).push(AppRouter.kHomeView);
        } else if (state is RegisterFailure) {
          log(state.error.code);
          switch (state.error.code) {
            case 'invalid-email':
              showSnackBar(context, 'Invalid Email!');
            case 'email-already-in-use':
              showSnackBar(context, 'Email already exist');
            case 'weak-password':
              showSnackBar(context, 'Use Stronger password');
            default:
              showSnackBar(context, 'We have an Error!');
          }
        }
      },
      builder: (context, state) {
        return Container(
          padding: const EdgeInsets.symmetric(horizontal: 32),
          child: Form(
            key: formKey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Image.asset(
                  Assets.imagesLogoDark,
                  height: 140,
                ),
                const SizedBox(height: 41),
                CustomFormTextField(
                  hintText: 'your name ...',
                  controller: nameController,
                ),
                const SizedBox(height: 30),
                CustomFormTextField(
                  hintText: 'example@gmail.com',
                  controller: emailController,
                ),
                const SizedBox(height: 30),
                const SizedBox(height: 10),
                CustomPasswordField(
                  controller: passwordController,
                ),
                const SizedBox(height: 40),
                CustomButton(
                  bgColor: Theme.of(context).colorScheme.primary,
                  btnText: 'Create Account',
                  textColor: AppColors.backgroudColor,
                  ontap: () {
                    if (formKey.currentState!.validate()) {
                      BlocProvider.of<AuthBloc>(context).add(
                        RegisterEvent(
                          email: emailController.text,
                          password: passwordController.text,
                          name: nameController.text,
                        ),
                      );
                    }
                  },
                ),
                const SizedBox(height: 10),
                _buildSignUpLink(context),
                const SizedBox(height: 30),
              ],
            ),
          ),
        );
      },
    );
  }

  Row _buildSignUpLink(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        const Text(
          "already have an account ? ",
          style: TextStyle(
            color: Color(0xff311937),
            fontWeight: FontWeight.w500,
          ),
        ),
        GestureDetector(
          onTap: () {
            Navigator.of(context).pop();
          },
          child: const Text(
            'Sign In',
            style: TextStyle(
              color: Color(0xffB91635),
              fontSize: 16,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
      ],
    );
  }
}
