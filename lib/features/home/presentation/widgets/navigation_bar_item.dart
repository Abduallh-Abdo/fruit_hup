import 'package:flutter/material.dart';
import 'package:fruit_hup/features/home/presentation/widgets/active_item.dart';
import 'package:fruit_hup/features/home/presentation/widgets/in_active_item.dart';

import '../../domain/entities/bottom_nav_bar_entity.dart';

class NavigationNarItem extends StatelessWidget {
  const NavigationNarItem({
    super.key,
    required this.isActive,
    required this.bottomNavBarEntity,
  });
  final bool isActive;
  final BottomNavBarEntity bottomNavBarEntity;
  @override
  Widget build(BuildContext context) {
    return isActive
        ? ActiveItem(
            image: bottomNavBarEntity.activeImage,
            name: bottomNavBarEntity.name,
          )
        : InActiveItem(image: bottomNavBarEntity.inactiveImage);
  }
}
