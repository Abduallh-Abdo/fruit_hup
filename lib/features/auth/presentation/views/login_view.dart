import 'package:flutter/material.dart';
import 'package:fruit_hup/features/auth/presentation/widgets/login_view_body.dart';

import '../../../../core/widgets/custom_app_bar.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(context: context, title: 'تسجيل الدخول'),
      body: const LoginViewBody(),
    );
  }
}
