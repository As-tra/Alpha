import 'package:alpha/models/book_model.dart';
import 'package:alpha/views/admin_view.dart';
import 'package:alpha/views/book_details_view.dart';
import 'package:alpha/views/home_view.dart';
import 'package:alpha/views/login_view.dart';
import 'package:alpha/views/onboarding_view.dart';
import 'package:alpha/views/register_view.dart';
import 'package:alpha/views/splash_view.dart';
import 'package:go_router/go_router.dart';

abstract class AppRouter {
  static const kOnboarding = '/Onboarding';
  static const kLoginView = '/LoginView';
  static const kRegisterView = '/RegisterView';
  static const kHomeView = '/HomeView';
  static const kBookDetails = '/BookDetails';
  static const kAdminView = '/AdminView';
  static final router = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => const SplashView(),
      ),
      GoRoute(
        path: kHomeView,
        builder: (context, state) => const HomeView(),
      ),
      GoRoute(
        path: kAdminView,
        builder: (context, state) => const AdminView(),
      ),
      GoRoute(
        path: kOnboarding,
        builder: (context, state) => const OnboardingView(),
      ),
      GoRoute(
        path: kRegisterView,
        builder: (context, state) => const RegisterView(),
      ),
      GoRoute(
        path: kLoginView,
        builder: (context, state) => const LoginView(),
      ),
      GoRoute(
        path: kBookDetails,
        builder: (context, state) => BookDetailsView(
          bookModel: state.extra as BookModel,
        ),
      ),
    ],
  );
}
