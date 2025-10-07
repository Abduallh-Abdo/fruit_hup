import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fruit_hup/core/get_it.dart';
import 'package:fruit_hup/core/widgets/build_app_bar.dart';
import 'package:fruit_hup/features/checkout/domain/entities/order_entity.dart';
import 'package:fruit_hup/features/checkout/domain/entities/shipping_address_entity.dart';
import 'package:fruit_hup/features/checkout/presentation/cubit/orders_cubit/orders_cubit.dart';
import 'package:fruit_hup/features/checkout/presentation/widgets/checkout_view_body.dart';
import 'package:fruit_hup/features/home/domain/entities/cart_entity.dart';
import 'package:provider/provider.dart';

import '../../../../core/helper/functions/get_user.dart';
import '../../../../core/repos/orders_repo/orders_repo.dart';

class CheckoutView extends StatelessWidget {
  const CheckoutView({super.key, required this.cartEntity});
  final CartEntity cartEntity;
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => OrdersCubit(ordersRepo: sl<OrdersRepo>()),
      child: Scaffold(
        appBar: buildAppBar(
          title: 'الشحن',
          showNotificationButton: false,
          context: context,
        ),
        body: Provider.value(
          value: OrderEntity(
            uId: getUser().uId,
            cartEntity: cartEntity,
            shippingAddressEntity: ShippingAddressEntity(),
          ),
          child: const CheckoutViewBody(),
        ),
      ),
    );
  }
}
