import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:fruit_hup/core/utils/app_colors.dart';
import 'package:fruit_hup/core/utils/app_text_styles.dart';
import 'package:fruit_hup/core/widgets/fruit_item.dart';
import 'package:fruit_hup/features/home/presentation/widgets/cart_item_action_buttons.dart';

import '../../../../core/utils/assets_manager.dart';

class CartItem extends StatelessWidget {
  const CartItem({super.key});

  @override
  Widget build(BuildContext context) {
    return IntrinsicHeight(
      child: Row(
        children: [
          Container(
            width: 73,
            height: 92,
            decoration: const BoxDecoration(color: Color(0xffF3F5F7)),
            child: const CustomNetworkImage(
              imageUrl:
                  'https://imgs.search.brave.com/dS2paa5-W6i_3D0TSV1iL9lsIPUDWY0q1WrW_zrYuuE/rs:fit:860:0:0:0/g:ce/aHR0cHM6Ly9pbWcu/ZnJlZXBpay5jb20v/ZnJlZS12ZWN0b3Iv/Z2xpdGNoLWVycm9y/LTQwNC1wYWdlXzIz/LTIxNDgxMDU0MDQu/anBnP3NlbXQ9YWlz/X2h5YnJpZCZ3PTc0/MCZxPTgw',
            ),
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
                    const Text('بطيخ', style: AppTextStyles.bold13),
                    GestureDetector(
                      onTap: () {},
                      child: SvgPicture.asset(Assets.imagesTrashIcon),
                    ),
                  ],
                ),
                Text(
                  '2 كم',
                  style: AppTextStyles.regular13.copyWith(
                    color: AppColors.scondrayColor,
                  ),
                ),
                const CartItemActionButtons(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
