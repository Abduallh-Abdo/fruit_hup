import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fruit_hup/core/helper/extensions/media_query_values.dart';
import 'package:fruit_hup/core/widgets/custom_divider.dart';
import 'package:fruit_hup/features/home/presentation/widgets/cart_header.dart';
import 'package:fruit_hup/features/home/presentation/widgets/cart_item_list.dart';

import '../../../../core/utils/constants.dart';
import '../../../../core/widgets/build_app_bar.dart';
import '../cubit/cart_cubit/cart_cubit.dart';
import 'custom_cart_button.dart';

class CartViewBody extends StatelessWidget {
  const CartViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    final cart = context.read<CartCubit>().cartEntity.cartItmes;
    return Stack(
      children: [
        CustomScrollView(
          slivers: [
            SliverToBoxAdapter(
              child: Column(
                children: [
                  const SizedBox(height: KTopPadding),
                  buildAppBar(
                    context: context,
                    title: 'السلة',
                    showNotificationButton: false,
                    showBackButton: false,
                  ),
                  const SizedBox(height: 16),
                  const CartHeader(),
                  const SizedBox(height: 24),
                ],
              ),
            ),
            SliverToBoxAdapter(
              child: cart.isEmpty ? const SizedBox() : const CustomDivider(),
            ),
            CartItemList(
              cartItemLsit: context.watch<CartCubit>().cartEntity.cartItmes,
            ),
            SliverToBoxAdapter(
              child: cart.isEmpty ? const SizedBox() : const CustomDivider(),
            ),
          ],
        ),
        cart.isEmpty
            ? const SizedBox()
            : Positioned(
                left: 16,
                right: 16,
                bottom: context.height * 0.06,
                child: const CustomCartButton(),
              ),
      ],
    );
  }
}
