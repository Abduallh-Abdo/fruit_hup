import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fruit_hup/core/cubits/cubit/procduct_cubit.dart';
import 'package:fruit_hup/features/home/presentation/widgets/bset_selling_grid_bolc_builder.dart';
import 'package:fruit_hup/features/home/presentation/widgets/custom_home_app_bar.dart';
import 'package:fruit_hup/features/home/presentation/widgets/product_selling_header.dart';

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
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: KHorizontalPadding),
      child: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: Column(
              children: [
                SizedBox(height: KTopPadding),
                CustomHomeAppBar(),
                SizedBox(height: 16),
                SearchTextField(),
                SizedBox(height: 12),

                ProductSellingHeader(),
                SizedBox(height: 8),
              ],
            ),
          ),
          BsetSellingGridBolcBuilder(),
        ],
      ),
    );
  }
}
