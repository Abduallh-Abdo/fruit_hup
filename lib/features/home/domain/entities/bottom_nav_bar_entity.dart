import '../../../../core/utils/assets_manager.dart';

class BottomNavBarEntity {
  final String activeImage, inactiveImage, name;

  BottomNavBarEntity({
    required this.activeImage,
    required this.inactiveImage,
    required this.name,
  });
}

List<BottomNavBarEntity> listBottomNavBarEntity = [
  BottomNavBarEntity(
    activeImage: Assets.imagesHomeBold,
    inactiveImage: Assets.imagesHomeOutline,
    name: 'الرئيسية',
  ),
  BottomNavBarEntity(
    activeImage: Assets.imagesProductBold,
    inactiveImage: Assets.imagesProductOutline,
    name: 'المنتجات',
  ),
  BottomNavBarEntity(
    activeImage: Assets.imagesShoppingCartBold,
    inactiveImage: Assets.imagesShoppingCartOutline,
    name: 'سلة التسوق',
  ),
  BottomNavBarEntity(
    activeImage: Assets.imagesUserBold,
    inactiveImage: Assets.imagesUserOutline,
    name: 'حسابي',
  ),
];
