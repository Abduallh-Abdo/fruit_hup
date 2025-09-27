import 'package:flutter/material.dart';
import 'package:fruit_hup/core/entities/product_entity.dart';
import 'package:fruit_hup/core/widgets/fruit_item.dart';

class BsetSellingGrid extends StatelessWidget {
  const BsetSellingGrid({super.key, required this.procduct});
  final List<ProductEntity> procduct;
  @override
  Widget build(BuildContext context) {
    return SliverGrid.builder(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        mainAxisSpacing: 8,
        crossAxisSpacing: 16,
        childAspectRatio: 163 / 214,
      ),
      itemBuilder: (context, index) {
        return const FruitItem();
      },
    );
  }
}
