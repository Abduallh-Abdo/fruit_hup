import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fruit_hup/core/cubits/cubit/procduct_cubit.dart';
import 'package:fruit_hup/core/widgets/build_app_bar.dart';
import 'package:fruit_hup/features/home/presentation/widgets/products_grid_bolc_builder.dart';
import 'package:fruit_hup/features/home/presentation/widgets/product_view_header.dart';

import '../../../../core/utils/constants.dart';
import '../../../../core/widgets/search_text_field.dart';

class ProductViewBody extends StatefulWidget {
  const ProductViewBody({super.key});

  @override
  State<ProductViewBody> createState() => _ProductViewBodyState();
}

class _ProductViewBodyState extends State<ProductViewBody> {
  @override
  void initState() {
    context.read<ProductCubit>().getProducts();
    super.initState();
  }

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
                  title: 'المنتجات',
                  showBackButton: false,
                ),
                const SizedBox(height: 16),
                const SearchTextField(),
                const SizedBox(height: 12),

                ProductViewHeader(
                  productLength: context.read<ProductCubit>().protductLenght,
                ),
                const SizedBox(height: 8),
              ],
            ),
          ),
          const ProductsGridBolcBuilder(),
        ],
      ),
    );
  }
}
