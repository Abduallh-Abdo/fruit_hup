import 'package:equatable/equatable.dart';

import '../../../../core/entities/product_entity.dart';

class CartItemEntity extends Equatable {
  final ProductEntity productEntity;
  int count;
  CartItemEntity({required this.productEntity, this.count = 0});

  num calculateTotalPrice() => productEntity.price * count;
  num calculateTotalWeight() => productEntity.unitAmount * count;

  increaseQuantity() => count++;
  decreaseQuantity() => count--;

  @override
  List<Object?> get props => [productEntity];
}
