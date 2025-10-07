import 'package:fruit_hup/features/home/domain/entities/cart_item_entity.dart';

import 'item_entity.dart';

class ItemListEntity {
  List<ItemEntity>? items;

  ItemListEntity({this.items});

  Map<String, dynamic> toJson() => {
    'items': items?.map((e) => e.toJson()).toList(),
  };

  factory ItemListEntity.fromEntity(List<CartItemEntity> cartItems) {
    return ItemListEntity(
      items: cartItems.map((e) => ItemEntity.fromEntity(e)).toList(),
    );
  }
}
