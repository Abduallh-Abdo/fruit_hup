import 'package:flutter/material.dart';
import 'package:fruit_hup/core/helper/extensions/media_query_values.dart';
import 'package:fruit_hup/core/widgets/custom_button.dart';
import 'package:fruit_hup/core/widgets/custom_divider.dart';
import 'package:fruit_hup/features/home/presentation/widgets/cart_header.dart';
import 'package:fruit_hup/features/home/presentation/widgets/cart_item.dart';
import 'package:fruit_hup/features/home/presentation/widgets/cart_item_list.dart';
import 'package:fruit_hup/generated/l10n.dart';

import '../../../../core/utils/constants.dart';
import '../../../../core/widgets/build_app_bar.dart';

class CartViewBody extends StatelessWidget {
  const CartViewBody({super.key});

  @override
  Widget build(BuildContext context) {
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
                  ),
                  const SizedBox(height: 16),
                  const CartHeader(),
                  const SizedBox(height: 24),
                ],
              ),
            ),
            const SliverToBoxAdapter(child: CustomDivider()),
            const CartItemList(),
            const SliverToBoxAdapter(child: CustomDivider()),
          ],
        ),
        Positioned(
          left: 16,
          right: 16,
          bottom: context.height * 0.06,
          child: CustomButton(onPressed: () {}, text: 'الدفع  120جنيه'),
        ),
      ],
    );
  }
}
