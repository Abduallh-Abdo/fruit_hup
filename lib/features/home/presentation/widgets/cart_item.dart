import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:fruit_hup/core/utils/app_colors.dart';
import 'package:fruit_hup/core/utils/app_text_styles.dart';
import 'package:fruit_hup/core/widgets/fruit_item.dart';
import 'package:fruit_hup/features/home/domain/entities/cart_item_entity.dart';
import 'package:fruit_hup/features/home/presentation/widgets/cart_item_action_buttons.dart';

import '../../../../core/utils/assets_manager.dart';

class CartItem extends StatelessWidget {
  const CartItem({super.key, required this.cartItemEntity});
  final CartItemEntity cartItemEntity;
  @override
  Widget build(BuildContext context) {
    final productEntity = cartItemEntity.productEntity;
    return IntrinsicHeight(
      child: Row(
        children: [
          Container(
            width: 73,
            height: 92,
            decoration: const BoxDecoration(color: Color(0xffF3F5F7)),
            child: CustomNetworkImage(imageUrl: productEntity.imageUrl!),
          ),
          const SizedBox(width: 17),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(productEntity.name, style: AppTextStyles.bold13),
                    GestureDetector(
                      onTap: () {},
                      child: SvgPicture.asset(Assets.imagesTrashIcon),
                    ),
                  ],
                ),
                Text(
                  '${cartItemEntity.calculateTotalWeight()} كم',
                  style: AppTextStyles.regular13.copyWith(
                    color: AppColors.scondrayColor,
                  ),
                ),
                Row(
                  children: [
                    CartItemActionButtons(cartItemEntity: cartItemEntity),
                    const Spacer(),
                    Text(
                      '${cartItemEntity.calculateTotalPrice()} جنيه',
                      style: AppTextStyles.bold16.copyWith(
                        color: AppColors.scondrayColor,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
