import 'package:alpha/utils/assets.dart';
import 'package:alpha/utils/colors.dart';
import 'package:flutter/material.dart';

class CustomNavBar extends StatelessWidget {
  const CustomNavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Icon(
          Icons.menu,
          color: AppColors.grey3,
          size: 26,
        ),
        const Spacer(),
        Row(
          children: [
            Image.asset(Assets.imagesNotification),
            const SizedBox(width: 15),
            const CircleAvatar(
              radius: 17,
              backgroundImage: AssetImage(Assets.imagesProfileImage),
            ),
          ],
        ),
      ],
    );
  }
}
