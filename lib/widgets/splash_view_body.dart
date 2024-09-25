import 'package:alpha/utils/app_router.dart';
import 'package:alpha/utils/assets.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({super.key});

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(milliseconds: 600), () {
      if (mounted) {
        GoRouter.of(context).push(AppRouter.kOnboarding);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Image.asset(
        height: 180,
        width: 180,
        MediaQuery.of(context).platformBrightness == Brightness.dark
            ? Assets.imagesLogoDark
            : Assets.imagesLogoLight,
      ),
    );
  }
}
