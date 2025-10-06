import 'package:fruit_hup/core/entities/product_entity.dart';
import 'package:fruit_hup/features/home/domain/entities/cart_item_entity.dart';

class CartEntity {
  final List<CartItemEntity> cartItmes;
  CartEntity({required this.cartItmes});

  addCartItem(CartItemEntity cartItemEntity) {
    cartItmes.add(cartItemEntity);
  }

  removeCartItem(CartItemEntity cartItemEntity) {
    cartItmes.remove(cartItemEntity);
  }

  bool isExist(ProductEntity product) {
    for (var item in cartItmes) {
      if (item.productEntity == product) {
        return true;
      }
    }
    return false;
  }

  CartItemEntity getCartItem(ProductEntity product) {
    for (var item in cartItmes) {
      if (item.productEntity == product) {
        return item;
      }
    }
    return CartItemEntity(productEntity: product, quantity: 1);
  }

  double getTotalPrice() {
    double sum = 0.0;
    for (var item in cartItmes) {
      sum += item.calculateTotalPrice();
    }
    return sum;
  }
}
