import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:provider/provider.dart';

import '../../../../core/utils/app_text_styles.dart';
import '../../../../core/utils/assets_manager.dart';
import '../../domain/entities/order_entity.dart';
import 'payment_item.dart';

class ShippingAddressWidget extends StatelessWidget {
  const ShippingAddressWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return PaymentItem(
      title: 'عنوان التوصيل:',
      child: Row(
        children: [
          SvgPicture.asset(Assets.imagesLocationIcon),
          const SizedBox(width: 8),
          Text(
            context.read<OrderEntity>().shippingAddressEntity.toString(),
            style: AppTextStyles.regular16.copyWith(
              color: const Color(0xff4E5556),
            ),
          ),
          const Spacer(),
          GestureDetector(
            onTap: () {
              context.read<PageController>().animateToPage(
                1,
                duration: const Duration(milliseconds: 300),
                curve: Curves.bounceIn,
              );
            },
            child: Row(
              children: [
                SvgPicture.asset(Assets.imagesEditIcon),
                const SizedBox(width: 8),
                Text(
                  'تعديل',
                  style: AppTextStyles.semiBold13.copyWith(
                    color: const Color(0xff949d9e),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
