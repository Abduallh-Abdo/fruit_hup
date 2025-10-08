import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fruit_hup/core/get_it.dart';
import 'package:fruit_hup/core/widgets/build_app_bar.dart';
import 'package:fruit_hup/features/checkout/domain/entities/order_entity.dart';
import 'package:fruit_hup/features/checkout/domain/entities/shipping_address_entity.dart';
import 'package:fruit_hup/features/checkout/presentation/cubit/add_orders_cubit/add_orders_cubit.dart';
import 'package:fruit_hup/features/checkout/presentation/widgets/add_order_cubit_bolc_consumer.dart';
import 'package:fruit_hup/features/checkout/presentation/widgets/checkout_view_body.dart';
import 'package:fruit_hup/features/home/domain/entities/cart_entity.dart';
import 'package:provider/provider.dart';

import '../../../../core/helper/functions/get_user.dart';
import '../../../../core/repos/orders_repo/orders_repo.dart';

class CheckoutView extends StatefulWidget {
  const CheckoutView({super.key, required this.cartEntity});
  final CartEntity cartEntity;

  @override
  State<CheckoutView> createState() => _CheckoutViewState();
}

class _CheckoutViewState extends State<CheckoutView> {
  late OrderEntity orderEntity;
  @override
  void initState() {
    orderEntity = OrderEntity(
      uId: getUser().uId,
      cartEntity: widget.cartEntity,
      shippingAddressEntity: ShippingAddressEntity(),
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AddOrdersCubit(ordersRepo: sl<OrdersRepo>()),
      child: Scaffold(
        appBar: buildAppBar(
          title: 'الشحن',
          showNotificationButton: false,
          context: context,
        ),
        body: Provider.value(
          value: orderEntity,
          child: const AddOrderCubitBolcConsumer(child: CheckoutViewBody()),
        ),
      ),
    );
  }
}
