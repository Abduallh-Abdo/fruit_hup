import 'package:flutter/material.dart';
import 'package:fruit_hup/core/helper/functions/build_error_bar.dart';
import 'package:fruit_hup/features/checkout/presentation/widgets/step_item.dart';
import 'package:provider/provider.dart';

import '../../domain/entities/order_entity.dart';

class CheckoutSteps extends StatelessWidget {
  const CheckoutSteps({
    super.key,
    required this.currentStep,
    required this.pageController,
  });
  final int currentStep;
  final PageController pageController;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: List.generate(getSteps().length, (index) {
        return Expanded(
          child: GestureDetector(
            onTap: () {
              if (context.read<OrderEntity>().payWithCash != null) {
                pageController.animateTo(
                  index.toDouble(),
                  duration: const Duration(milliseconds: 300),
                  curve: Curves.bounceIn,
                );
              } else {
                showErrorBar(context, 'يرجي تحديد طريقه الدفع');
              }
            },
            child: StepItem(
              index: (index + 1).toString(),
              text: getSteps()[index],
              isActive: index <= currentStep,
            ),
          ),
        );
      }),
    );
  }
}

List<String> getSteps() => ['الشحن', 'العنوان', 'الدفع'];
