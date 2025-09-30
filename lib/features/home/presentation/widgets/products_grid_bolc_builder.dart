import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fruit_hup/core/cubits/cubit/procduct_cubit.dart';
import 'package:fruit_hup/core/helper/functions/custom_error_text.dart';
import 'package:fruit_hup/features/home/presentation/widgets/products_grid.dart';
import 'package:skeletonizer/skeletonizer.dart';

import '../../../../core/helper/functions/get_dummy_product.dart';

class ProductsGridBolcBuilder extends StatelessWidget {
  const ProductsGridBolcBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ProductCubit, ProductState>(
      builder: (context, state) {
        if (state is ProductFailure) {
          return SliverToBoxAdapter(
            child: CustomErrorText(errorText: state.errorMessage),
          );
        } else if (state is ProductSuccess) {
          return BsetSellingGrid(procduct: state.products);
        } else {
          return Skeletonizer.sliver(
            enabled: true,
            child: BsetSellingGrid(procduct: getDummyProducts()),
          );
        }
      },
    );
  }
}
