import 'package:flutter/material.dart';
import 'package:fruit_hup/features/checkout/presentation/widgets/in_active_step_item.dart';

class CheckoutSteps extends StatelessWidget {
  const CheckoutSteps({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: List.generate(getSteps().length, (index) {
        return Expanded(
          child: InActiveStepItem(
            index: index.toString(),
            text: getSteps()[index],
          ),
        );
      }),
    );
  }

  List<String> getSteps() => ['الشحن', 'العنوان', 'الدفع', 'المراجعه'];
}
