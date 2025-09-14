import 'package:flutter/material.dart';
import 'package:fruit_hup/features/auth/presentation/views/login_view.dart';

import '../../features/onBoarding/presentation/views/on_boarding_view.dart';
import '../../features/splash/views/splash_view.dart';

class Routes {
  static const String initialRoute = '/';
  static const String onBoarding = '/onBording';
  static const String loginView = '/loginView';
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
