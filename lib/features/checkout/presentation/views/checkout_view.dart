import 'package:flutter/material.dart';
import 'package:fruit_hup/core/widgets/build_app_bar.dart';
import 'package:fruit_hup/features/checkout/presentation/widgets/checkout_view_body.dart';

class CheckoutView extends StatelessWidget {
  const CheckoutView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(
        title: 'الشحن',
        showNotificationButton: false,
        context: context,
      ),
      body: const CheckoutViewBody(),
    );
  }
}
