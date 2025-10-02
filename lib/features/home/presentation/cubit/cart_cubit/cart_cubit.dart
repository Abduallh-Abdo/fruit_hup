import 'package:bloc/bloc.dart';
import 'package:fruit_hup/core/entities/product_entity.dart';
import 'package:fruit_hup/features/home/domain/entities/cart_item_entity.dart';

import '../../../domain/entities/cart_entity.dart';

part 'cart_state.dart';

class CartCubit extends Cubit<CartState> {
  CartCubit() : super(CartInitial());

  final CartEntity cartEntity = CartEntity(cartItmes: []);

  void addProduct(ProductEntity productEntity) {
    final item = cartEntity.getCartItem(productEntity);
    if (cartEntity.isExist(productEntity)) {
      item.increaseQuantity();
    } else {
      cartEntity.addCartItem(item);
    }
    emit(CartItemAdded());
  }

  void deleteCartItem(CartItemEntity cartItemEntity) {
    cartEntity.removeCartItem(cartItemEntity);
    emit(CartItemRemoved());
  }
}
