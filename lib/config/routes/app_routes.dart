import 'dart:developer';

import 'package:flutter/material.dart';

import '../../features/splash/views/splash_view.dart';

class Routes {
  static const String initialRoute = '/';
}

class AppRoutes {
  static Route? onGenerateRoute(RouteSettings routeSettings) {
    switch (routeSettings.name) {
      case Routes.initialRoute:
  
        return MaterialPageRoute(builder: (context) => const SplashView());

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