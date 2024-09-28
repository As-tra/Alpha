import 'package:alpha/utils/assets.dart';
import 'package:flutter/material.dart';

class CustomNavBar extends StatelessWidget {
  const CustomNavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        IconButton(
          onPressed: () {
            Scaffold.of(context).openDrawer();
          },
          icon: Icon(
            Icons.menu,
            color: Theme.of(context).colorScheme.onSurfaceVariant,
            size: 26,
          ),
        ),
        const Spacer(),
        Row(
          children: [
            Image.asset(
              Assets.imagesNotification,
              color: Theme.of(context).colorScheme.onSurfaceVariant,
            ),
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
