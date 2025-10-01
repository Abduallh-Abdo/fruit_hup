import 'package:flutter/material.dart';
import 'package:fruit_hup/core/utils/constants.dart';
import 'package:fruit_hup/features/home/presentation/widgets/cart_item.dart';

import '../../../../core/widgets/custom_divider.dart';
import '../../domain/entities/cart_item_entity.dart';

class CartItemList extends StatelessWidget {
  const CartItemList({super.key, required this.cartItemLsit});
  final List<CartItemEntity> cartItemLsit;

  @override
  Widget build(BuildContext context) {
    return SliverList.separated(
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: KHorizontalPadding),
          child: CartItem(cartItemEntity: cartItemLsit[index]),
        );
      },
      separatorBuilder: (context, index) {
        return const CustomDivider();
      },
      itemCount: cartItemLsit.length,
    );
  }
}
