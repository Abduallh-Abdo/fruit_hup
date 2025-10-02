import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fruit_hup/core/utils/app_colors.dart';
import 'package:fruit_hup/core/utils/app_text_styles.dart';
import 'package:fruit_hup/features/home/domain/entities/cart_item_entity.dart';

import '../cubit/cart_item_cubit/cart_item_cubit.dart';

class CartItemActionButtons extends StatelessWidget {
  const CartItemActionButtons({super.key, required this.cartItemEntity});
  final CartItemEntity cartItemEntity;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CartItemButton(
          icon: Icons.add,
          color: AppColors.primaryColor,
          iconColor: Colors.white,
          onTap: () {
            cartItemEntity.increaseQuantity();
            context.read<CartItemCubit>().updateCartItem(cartItemEntity);
          },
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Text('${cartItemEntity.count}', style: AppTextStyles.bold16),
        ),
        CartItemButton(
          icon: Icons.remove,
          color: const Color(0xfff3f5f7),
          iconColor: Colors.grey,
          onTap: () {
            cartItemEntity.decreaseQuantity();
            context.read<CartItemCubit>().updateCartItem(cartItemEntity);
          },
        ),
      ],
    );
  }
}

class CartItemButton extends StatelessWidget {
  const CartItemButton({
    super.key,
    required this.color,
    required this.iconColor,
    required this.icon,
    required this.onTap,
  });
  final Color color;
  final Color iconColor;
  final IconData icon;
  final VoidCallback onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: 24,
        height: 24,
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(100),
        ),
        child: FittedBox(child: Icon(icon, color: iconColor)),
      ),
    );
  }
}
