import 'package:fruit_hup/features/home/domain/entities/cart_item_entity.dart';

class CartEntity {
  final List<CartItemEntity> cartItmes;
  CartEntity({required this.cartItmes});

  addCartItem(CartItemEntity cartItemEntity) {
    cartItmes.add(cartItemEntity);
  
  }
}
