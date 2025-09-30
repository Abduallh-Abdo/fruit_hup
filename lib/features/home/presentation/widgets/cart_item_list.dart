import 'package:flutter/material.dart';
import 'package:fruit_hup/core/utils/constants.dart';
import 'package:fruit_hup/features/home/presentation/widgets/cart_item.dart';

import '../../../../core/widgets/custom_divider.dart';

class CartItemList extends StatelessWidget {
  const CartItemList({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverList.separated(
      itemBuilder: (context, index) {
        return const Padding(
          padding: EdgeInsets.symmetric(horizontal: KHorizontalPadding),
          child: CartItem(),
        );
      },
      separatorBuilder: (context, index) {
        return const CustomDivider();
      },
      itemCount: 10,
    );
  }
}
