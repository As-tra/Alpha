import 'package:adaptive_theme/adaptive_theme.dart';
import 'package:alpha/utils/app_router.dart';
import 'package:alpha/utils/theme.dart';
import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final savedThemeMode = await AdaptiveTheme.getThemeMode();
  runApp(
    DevicePreview(
      enabled: true,
      builder: (context) {
        return Alpha(savedThemeMode: savedThemeMode);
      },
    ),
  );
}

class Alpha extends StatelessWidget {
  const Alpha({super.key, required this.savedThemeMode});
  final AdaptiveThemeMode? savedThemeMode;
  @override
  Widget build(BuildContext context) {
    return AdaptiveTheme(
      light: lightTheme,
      dark: darkTheme,
      initial: savedThemeMode ?? AdaptiveThemeMode.system,
      builder: (theme, darkTheme) => MaterialApp.router(
        theme: theme,
        darkTheme: darkTheme,
        debugShowCheckedModeBanner: false,
        routerConfig: AppRouter.router,
        locale: DevicePreview.locale(context),
        builder: DevicePreview.appBuilder,
        title: 'Flutter Demo',
        
      ),
    );
  }
}
