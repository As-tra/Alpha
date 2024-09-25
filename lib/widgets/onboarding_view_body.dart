import 'package:alpha/utils/app_router.dart';
import 'package:alpha/utils/assets.dart';
import 'package:alpha/utils/colors.dart';
import 'package:alpha/utils/styles.dart';
import 'package:alpha/widgets/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class OnboardingViewBody extends StatelessWidget {
  const OnboardingViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 22),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const Spacer(flex: 1),
          Image.asset(Assets.imagesBro),
          const SizedBox(height: 43),
          Text(
            "Welcome",
            style: Styles.styleBold36(context),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 7),
          Text(
            "Read without limits",
            style: Styles.styleRegular18(context),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 43),
          CustomButton(
            btnText: 'Create Account',
            bgColor: Theme.of(context).colorScheme.surface,
            textColor: AppColors.primaryColor,
            ontap: () => GoRouter.of(context).push(AppRouter.kRegisterView),
          ),
          const SizedBox(height: 20),
          CustomButton(
            bgColor: Theme.of(context).colorScheme.primary,
            ontap: () {},
            btnText: 'Log In as Guest',
            textColor: AppColors.backgroudColor,
          ),
          const Spacer(flex: 2),
        ],
      ),
    );
  }
}
