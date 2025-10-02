import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:fruit_hup/core/entities/product_entity.dart';

import '../../../domain/entities/cart_entity.dart';

part 'cart_state.dart';

class CartCubit extends Cubit<CartState> {
  CartCubit() : super(CartInitial());

  final CartEntity cartEntity = CartEntity(cartItmes: []);

void addProduct(ProductEntity productEntity) {
    final item = cartEntity.getCartItem(productEntity);
    if (cartEntity.isExist(productEntity)) {
      item.increaseCount();
    } else {
      cartEntity.addCartItem(item);
    }
    emit(CartProductAdded());
  }
}
