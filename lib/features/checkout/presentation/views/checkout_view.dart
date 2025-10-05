import 'package:flutter/material.dart';
import 'package:fruit_hup/core/widgets/build_app_bar.dart';
import 'package:fruit_hup/features/checkout/domain/entities/order_entity.dart';
import 'package:fruit_hup/features/checkout/presentation/widgets/checkout_view_body.dart';
import 'package:fruit_hup/features/home/domain/entities/cart_entity.dart';
import 'package:provider/provider.dart';

class CheckoutView extends StatelessWidget {
  const CheckoutView({super.key, required this.cartEntity});
  final  CartEntity cartEntity;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(
        title: 'الشحن',
        showNotificationButton: false,
        context: context,
      ),
      body: Provider.value(
         value: OrderEntity(cartEntity: cartEntity),
        child: const CheckoutViewBody()),
    );
  }
}
