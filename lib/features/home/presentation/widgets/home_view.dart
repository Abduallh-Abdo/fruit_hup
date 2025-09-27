import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fruit_hup/core/cubits/cubit/procduct_cubit.dart';
import 'package:fruit_hup/core/get_it.dart';
import 'package:fruit_hup/features/home/presentation/widgets/home_view_body.dart';

import '../../../../core/repos/products_repo/products_repo.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ProcductCubit(sl<ProductsRepo>()),
      child: const HomeViewBody(),
    );
  }
}
