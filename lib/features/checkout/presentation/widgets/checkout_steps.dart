import 'package:flutter/material.dart';
import 'package:fruit_hup/features/checkout/presentation/widgets/step_item.dart';

class CheckoutSteps extends StatelessWidget {
  const CheckoutSteps({super.key, required this.currentStep});
final int currentStep ;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: List.generate(getSteps().length, (index) {
        return Expanded(
          child: StepItem(
            index: (index + 1).toString(),
            text: getSteps()[index],
            isActive: index <= currentStep,
          ),
        );
      }),
    );
  }
}

List<String> getSteps() => ['الشحن', 'العنوان', 'الدفع'];
