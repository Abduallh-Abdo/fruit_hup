
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../core/utils/app_text_styles.dart';
import '../../../../core/utils/assets_manager.dart';
import 'payment_item.dart';

class OrderAddressWidget extends StatelessWidget {
  const OrderAddressWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return PaymentItem(
      title: 'عنوان التوصيل:',
      child: Row(
        children: [
          SvgPicture.asset(Assets.imagesLocationIcon),
          const SizedBox(width: 8),
          Text(
            'شارع النيل، مبنى رقم ١٢٣',
            style: AppTextStyles.regular16.copyWith(
              color: const Color(0xff4E5556),
            ),
          ),
          const Spacer(),
          GestureDetector(
            onTap: () {},
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
