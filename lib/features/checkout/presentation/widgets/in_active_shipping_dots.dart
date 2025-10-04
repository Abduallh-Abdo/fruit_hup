import 'package:flutter/material.dart';

class InActiveShippingDots extends StatelessWidget {
  const InActiveShippingDots({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 18,
      height: 18,
      decoration: const ShapeDecoration(
        shape: OvalBorder(side: BorderSide(width: 1, color: Color(0xff949d9e))),
      ),
    );
  }
}