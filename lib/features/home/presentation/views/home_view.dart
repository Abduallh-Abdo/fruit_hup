import 'package:flutter/material.dart';
import 'package:fruit_hup/features/home/presentation/widgets/custom_bottom_nav_bar.dart';

import '../widgets/home_view_body.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      bottomNavigationBar: CustomBottomNavBar(),
      body: SafeArea(child: HomeViewBody()),
    );
  }
}
