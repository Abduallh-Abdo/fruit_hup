import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fruit_hup/features/home/presentation/cubit/cart_cubit/cart_cubit.dart';
import 'package:fruit_hup/features/home/presentation/views/cart_view.dart';
import 'package:fruit_hup/features/home/presentation/widgets/custom_bottom_nav_bar.dart';

import 'home_view.dart';
import 'product_view.dart';

class MainView extends StatefulWidget {
  const MainView({super.key});

  @override
  State<MainView> createState() => _MainViewState();
}

class _MainViewState extends State<MainView> {
  int currentViewIndex = 0;
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => CartCubit(),
      child: Scaffold(
        bottomNavigationBar: CustomBottomNavBar(
          onItemTapped: (index) {
            currentViewIndex = index;
            setState(() {});
          },
        ),
        body: SafeArea(
          child: IndexedStack(
            index: currentViewIndex,
            children: const [HomeView(), ProductView(), CartView()],
          ),
        ),
      ),
    );
  }
}
