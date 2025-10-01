import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

import '../../../domain/entities/cart_entity.dart';
import '../../../domain/entities/cart_item_entity.dart';

part 'cart_state.dart';

class CartCubit extends Cubit<CartState> {
  CartCubit() : super(CartInitial());
  final CartEntity cartEntity = CartEntity(cartItmes: []);
  addCartItem(CartItemEntity cartItemEntity) {
    cartEntity.addCartItem(cartItemEntity);
    emit(CartItemAdded());
  }
}
