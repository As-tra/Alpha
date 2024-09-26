import 'package:alpha/utils/colors.dart';
import 'package:alpha/utils/styles.dart';
import 'package:flutter/material.dart';

class WelcomeWidget extends StatelessWidget {
  const WelcomeWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Hello, Tricia 👋🏻",
          style: Styles.styleBold24(context).copyWith(
            color: AppColors.primaryColor,
          ),
        ),
        Text(
          "What do you want to read today?",
          style: Styles.styleBold16(context),
        ),
      ],
    );
  }
}
