import 'package:adaptive_theme/adaptive_theme.dart';
import 'package:alpha/utils/assets.dart';
import 'package:flutter/material.dart';

class SplashViewBody extends StatelessWidget {
  const SplashViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        color: Theme.of(context).colorScheme.primary,
        child: Center(
          child: ValueListenableBuilder(
            valueListenable: AdaptiveTheme.of(context).modeChangeNotifier,
            builder: (_, mode, child) {
              return Image.asset(
                height: 180,
                width: 180,
                mode.isDark ? Assets.imagesLogoDark : Assets.imagesLogoLight,
              );
            },
          ),
        ));
  }
}
