import 'package:adaptive_theme/adaptive_theme.dart';
import 'package:alpha/bloc/Auth_bloc/auth_bloc.dart';
import 'package:alpha/firebase_options.dart';
import 'package:alpha/utils/app_router.dart';
import 'package:alpha/utils/theme.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final savedThemeMode = await AdaptiveTheme.getThemeMode();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(
    Alpha(savedThemeMode: savedThemeMode),
  );
}

class Alpha extends StatelessWidget {
  const Alpha({super.key, required this.savedThemeMode});
  final AdaptiveThemeMode? savedThemeMode;
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AuthBloc(),
      child: AdaptiveTheme(
        light: lightTheme,
        dark: darkTheme,
        initial: savedThemeMode ?? AdaptiveThemeMode.system,
        builder: (theme, darkTheme) => MaterialApp.router(
          theme: theme,
          darkTheme: darkTheme,
          debugShowCheckedModeBanner: false,
          routerConfig: AppRouter.router,
          title: 'Flutter Demo',
        ),
      ),
    );
  }
}
