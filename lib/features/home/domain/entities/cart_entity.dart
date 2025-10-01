import 'package:fruit_hup/core/entities/product_entity.dart';
import 'package:fruit_hup/features/home/domain/entities/cart_item_entity.dart';

class CartEntity {
  final List<CartItemEntity> cartItmes;
  CartEntity({required this.cartItmes});

  addCartItem(CartItemEntity cartItemEntity) {
    cartItmes.add(cartItemEntity);
  }

  bool isExist(ProductEntity product) {
    for (var item in cartItmes) {
      if (item.productEntity == product) {
        return true;
      }
    }
    return false;
  }
}
