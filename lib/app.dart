
import 'package:flutter/material.dart';

import 'config/routes/app_routes.dart';

class FruitsHup extends StatelessWidget {
  const FruitsHup({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      onGenerateRoute: AppRoutes.onGenerateRoute,
    );
  }
}