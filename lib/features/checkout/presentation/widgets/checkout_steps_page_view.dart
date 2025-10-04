
import 'package:flutter/material.dart';
import 'package:fruit_hup/features/checkout/presentation/widgets/checkout_steps.dart';

class CheckoutStepsPageView extends StatelessWidget {
  const CheckoutStepsPageView({
    super.key,
    required this.pageController,
  });

  final PageController pageController;

  @override
  Widget build(BuildContext context) {
    return PageView.builder(
      controller: pageController,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: getSteps().length,
      itemBuilder: (context, index) {
        return Container();
      },
    );
  }
}
