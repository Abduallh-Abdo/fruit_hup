import 'package:flutter/material.dart';

import '../widgets/best_selling_view_body.dart';
import '../widgets/build_best_selling_app_bar.dart';

class BestSellingView extends StatelessWidget {
  const BestSellingView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildBsetSellingAppBar(context),
      body: const BestSellingViewBody(),
    );
  }
}