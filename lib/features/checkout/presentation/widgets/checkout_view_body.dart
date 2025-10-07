import 'package:flutter/material.dart';
import 'package:fruit_hup/core/utils/constants.dart';
import 'package:fruit_hup/core/widgets/custom_button.dart';
import 'package:fruit_hup/features/checkout/presentation/cubit/add_orders_cubit/add_orders_cubit.dart';
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
  int currentStep = 0;
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  final ValueNotifier<AutovalidateMode> valueNotifier = ValueNotifier(
    AutovalidateMode.disabled,
  );
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
    valueNotifier.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: KHorizontalPadding),
      child: MultiProvider(
        providers: [
          ChangeNotifierProvider.value(value: pageController),
          Provider<GlobalKey<FormState>>.value(value: formKey),
        ],
        child: Column(
          children: [
            const SizedBox(height: 20),
            CheckoutSteps(currentStep: currentStep),
            Expanded(
              child: CheckoutStepsPageView(valueNotifier: valueNotifier),
            ),
            CustomButton(
              onPressed: () {
                if (currentStep == 0) {
                  _handleShippingValidation(context);
                } else if (currentStep == 1) {
                  _handleAddressValidation();
                } else {
                  final orderEntity = context.read<OrderEntity>();
                  context.read<AddOrdersCubit>().addOrders(
                    orderEntity: orderEntity,
                  );
                }
              },
              text: getTextByIndex(currentStep),
            ),
            const SizedBox(height: 32),
          ],
        ),
      ),
    );
  }

  void _handleShippingValidation(BuildContext context) {
    if (context.read<OrderEntity>().payWithCash != null) {
      pageController.nextPage(
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeIn,
      );
    } else {
      showBar(context, 'يرجي تحديد طريقه الدفع');
    }
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

  void _handleAddressValidation() {
    if (formKey.currentState!.validate()) {
      formKey.currentState!.save();
      pageController.nextPage(
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeIn,
      );
    } else {
      valueNotifier.value = AutovalidateMode.always;
    }
  }
}
