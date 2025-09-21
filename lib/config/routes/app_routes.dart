import 'package:flutter/material.dart';
import 'package:fruit_hup/features/auth/presentation/views/login_view.dart';
import 'package:fruit_hup/features/auth/presentation/views/signup_view.dart';
import 'package:fruit_hup/features/best_selling_fruits/presentation/views/best_selling_view.dart';
import 'package:fruit_hup/features/home/presentation/views/home_view.dart';

import '../../features/onBoarding/presentation/views/on_boarding_view.dart';
import '../../features/splash/presentation/views/splash_view.dart';

class Routes {
  static const String initialRoute = '/';
  static const String onBoarding = '/onBording';
  static const String loginView = '/loginView';
  static const String signUpView = '/signUpView';
  static const String homeView = '/homeView';
  static const String bestSellingView = '/bestSellingView';
}

class AppRoutes {
  static Route? onGenerateRoute(RouteSettings routeSettings) {
    switch (routeSettings.name) {
      case Routes.initialRoute:
        return MaterialPageRoute(builder: (context) => const SplashView());
      case Routes.onBoarding:
        return MaterialPageRoute(builder: (context) => const OnBoardingView());
      case Routes.loginView:
        return MaterialPageRoute(builder: (context) => const LoginView());
      case Routes.signUpView:
        return MaterialPageRoute(builder: (context) => const SignupView());
      case Routes.homeView:
        return MaterialPageRoute(builder: (context) => const HomeView());
      case Routes.bestSellingView:
        return MaterialPageRoute(builder: (context) => const BestSellingView());

      default:
        return undefinedRoute();
    }
  }

  static Route<dynamic> undefinedRoute() {
    return MaterialPageRoute(
      builder: (context) =>
          const Scaffold(body: Center(child: Text("No Route Found"))),
    );
  }
}
