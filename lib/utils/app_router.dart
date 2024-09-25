import 'package:alpha/views/onboarding_view.dart';
import 'package:alpha/views/register_view.dart';
import 'package:alpha/views/splash_view.dart';
import 'package:go_router/go_router.dart';

abstract class AppRouter {
  static const kOnboarding = '/Onboarding';
  static const kLoginView = '/LoginView';
  static const kRegisterView = '/RegisterView';
  static final router = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => const SplashView(),
      ),
      GoRoute(
        path: kOnboarding,
        builder: (context, state) => const OnboardingView(),
      ),
      GoRoute(
        path: kRegisterView,
        builder: (context, state) => const RegisterView(),
      ),
      
    ],
  );
}
