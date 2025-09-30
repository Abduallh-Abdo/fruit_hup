import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fruit_hup/core/cubits/cubit/procduct_cubit.dart';
import 'package:fruit_hup/core/utils/constants.dart';
import 'package:fruit_hup/features/home/presentation/widgets/products_grid_bolc_builder.dart';
import 'package:fruit_hup/features/home/presentation/widgets/bset_selling_header.dart';
import 'package:fruit_hup/features/home/presentation/widgets/custom_home_app_bar.dart';
import 'package:fruit_hup/features/home/presentation/widgets/featured_list.dart';

import '../../../../core/widgets/search_text_field.dart';

class HomeViewBody extends StatefulWidget {
  const HomeViewBody({super.key});

  @override
  State<HomeViewBody> createState() => _HomeViewBodyState();
}

class _HomeViewBodyState extends State<HomeViewBody> {
  @override
  void initState() {
    context.read<ProductCubit>().getBestSellingProducts();
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
                FeaturedList(),
                SizedBox(height: 12),
                BsetSellingHeader(),
                SizedBox(height: 8),
              ],
            ),
          ),
          ProductsGridBolcBuilder(),
        ],
      ),
    );
  }
}
