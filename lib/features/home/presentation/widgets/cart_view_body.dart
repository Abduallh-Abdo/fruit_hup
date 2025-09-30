import 'package:flutter/material.dart';
import 'package:fruit_hup/features/home/presentation/widgets/cart_header.dart';

import '../../../../core/utils/constants.dart';
import '../../../../core/widgets/build_app_bar.dart';

class CartViewBody extends StatelessWidget {
  const CartViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: KHorizontalPadding),
      child: CustomScrollView(
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

                const SizedBox(height: 8),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
