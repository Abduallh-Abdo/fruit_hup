import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fruit_hup/core/entities/product_entity.dart';
import 'package:fruit_hup/features/home/presentation/cubit/cart_cubit/cart_cubit.dart';

import '../utils/app_colors.dart';
import '../utils/app_text_styles.dart';

class FruitItem extends StatelessWidget {
  const FruitItem({super.key, required this.productEntity});
  final ProductEntity productEntity;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: ShapeDecoration(
        color: const Color(0xfff3f5f7),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
      ),
      child: Stack(
        children: [
          Positioned(
            top: 0,
            right: 0,
            child: IconButton(
              icon: const Icon(Icons.favorite_border),
              onPressed: () {},
            ),
          ),
          Positioned.fill(
            child: Column(
              children: [
                const SizedBox(height: 20),
                productEntity.imageUrl != null
                    ? Flexible(
                        child: CustomNetworkImage(
                          imageUrl: productEntity.imageUrl!,
                        ),
                      )
                    : Container(color: Colors.grey, height: 100, width: 100),
                const SizedBox(height: 24),
                ListTile(
                  title: Text(productEntity.name, style: AppTextStyles.bold13),
                  subtitle: Text.rich(
                    TextSpan(
                      text: productEntity.price.toString(),
                      style: AppTextStyles.bold13.copyWith(
                        color: AppColors.scondrayColor,
                      ),
                      children: [
                        TextSpan(
                          text: 'جنية',
                          style: AppTextStyles.bold13.copyWith(
                            color: AppColors.scondrayColor,
                          ),
                        ),
                        const TextSpan(text: ' '),
                        TextSpan(
                          text: '/',
                          style: AppTextStyles.bold13.copyWith(
                            color: AppColors.lightScondrayColor,
                          ),
                        ),
                        const TextSpan(text: ' '),
                        TextSpan(
                          text: 'الكيلو',
                          style: AppTextStyles.semiBold13.copyWith(
                            color: AppColors.lightScondrayColor,
                          ),
                        ),
                      ],
                    ),
                  ),

                  trailing: CircleAvatar(
                    backgroundColor: AppColors.primaryColor,
                    child: IconButton(
                      icon: const Icon(Icons.add),
                      color: Colors.white,
                      onPressed: () {
                        context.read<CartCubit>().addProduct(productEntity);
                      },
                    ),
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

class CustomNetworkImage extends StatelessWidget {
  const CustomNetworkImage({super.key, required this.imageUrl});

  final String imageUrl;

  @override
  Widget build(BuildContext context) {
    return Image.network(imageUrl);
  }
}
