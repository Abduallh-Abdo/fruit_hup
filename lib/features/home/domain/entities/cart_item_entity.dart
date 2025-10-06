import 'package:equatable/equatable.dart';

import '../../../../core/entities/product_entity.dart';

class CartItemEntity extends Equatable {
  final ProductEntity productEntity;
  int quantity;
  CartItemEntity({required this.productEntity, this.quantity = 0});

  num calculateTotalPrice() => productEntity.price * quantity;
  num calculateTotalWeight() => productEntity.unitAmount * quantity;

  increaseQuantity() => quantity++;
  decreaseQuantity() => quantity--;

  @override
  List<Object?> get props => [productEntity];
}
