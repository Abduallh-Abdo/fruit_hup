import 'package:flutter/material.dart';
import 'package:fruit_hup/core/widgets/custom_app_bar.dart';

import '../widgets/signup_view_body.dart';

class SignupView extends StatelessWidget {
  const SignupView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(title: 'حساب جديد', context: context),
      body: const SignupViewBody(),
    );
  }
}