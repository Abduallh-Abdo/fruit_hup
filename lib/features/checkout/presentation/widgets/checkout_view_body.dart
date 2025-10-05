import 'package:flutter/material.dart';
import 'package:fruit_hup/core/utils/constants.dart';
import 'package:fruit_hup/core/widgets/custom_button.dart';
import 'package:fruit_hup/features/checkout/presentation/widgets/checkout_steps.dart';
import 'package:fruit_hup/features/checkout/presentation/widgets/checkout_steps_page_view.dart';
import 'package:provider/provider.dart';

import '../../../../core/helper/functions/build_error_bar.dart';
import '../../domain/entities/order_entity.dart';

class CheckoutViewBody extends StatefulWidget {
  const CheckoutViewBody({super.key});

  @override
  State<CheckoutViewBody> createState() => _CheckoutViewBodyState();
}

class _CheckoutViewBodyState extends State<CheckoutViewBody> {
  late PageController pageController;

  @override
  void initState() {
    pageController = PageController();
    pageController.addListener(() {
      setState(() {
        currentStep = pageController.page!.toInt();
      });
    });
    super.initState();
  }

  @override
  void dispose() {
    pageController.dispose();
    super.dispose();
  }

  int currentStep = 0;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: KHorizontalPadding),
      child: Column(
        children: [
          const SizedBox(height: 20),
          CheckoutSteps(
            pageController: pageController,
            currentStep: currentStep,
          ),
          Expanded(
            child: CheckoutStepsPageView(pageController: pageController),
          ),
          CustomButton(
            onPressed: () {
              if (context.read<OrderEntity>().payWithCash != null) {
                pageController.nextPage(
                  duration: const Duration(milliseconds: 300),
                  curve: Curves.easeIn,
                );
              } else {
                showErrorBar(context, 'يرجي تحديد طريقه الدفع');
              }
            },
            text: getTextByIndex(currentStep),
          ),
          const SizedBox(height: 32),
        ],
      ),
    );
  }

  String getTextByIndex(int index) {
    switch (index) {
      case 0:
        return 'التالي';
      case 1:
        return 'التالي';
      case 2:
        return 'الدفع عير PayPal';
      default:
        return 'التالي';
    }
  }
}
