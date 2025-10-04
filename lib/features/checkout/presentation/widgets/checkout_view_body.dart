import 'package:flutter/material.dart';
import 'package:fruit_hup/core/utils/constants.dart';
import 'package:fruit_hup/features/checkout/presentation/widgets/active_step_item.dart';
import 'package:fruit_hup/features/checkout/presentation/widgets/in_active_step_item.dart';

class CheckoutViewBody extends StatelessWidget {
  const CheckoutViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: KHorizontalPadding),
      child: Column(children: [ActiveStepItem(), InActiveStepItem()]),
    );
  }
}
