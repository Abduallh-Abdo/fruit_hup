import 'package:flutter/material.dart';
import 'package:fruit_hup/features/home/presentation/widgets/navigation_bar_item.dart';

import '../../domain/entities/bottom_nav_bar_entity.dart';

class CustomBottomNavBar extends StatelessWidget {
  const CustomBottomNavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 375,
      height: 70,
      decoration: const ShapeDecoration(
        color: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(30),
            topRight: Radius.circular(30),
          ),
        ),
        shadows: [
          BoxShadow(
            color: Color(0x19000000),
            spreadRadius: 0,
            blurRadius: 30,
            offset: Offset(0, -2),
          ),
        ],
      ),

      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: listBottomNavBarEntity.map((element) {
          return NavigationNarItem(
            bottomNavBarEntity: element,
            isActive: false,
          );
        }).toList(),
      ),
    );
  }
}




