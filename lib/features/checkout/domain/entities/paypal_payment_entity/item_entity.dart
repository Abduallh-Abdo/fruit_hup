import 'package:fruit_hup/core/helper/functions/get_currency.dart';
import 'package:fruit_hup/features/home/domain/entities/cart_item_entity.dart';

class ItemEntity {
  String? name;
  int? quantity;
  String? price;
  String? currency;

  ItemEntity({this.name, this.quantity, this.price, this.currency});

  Map<String, dynamic> toJson() => {
    'name': name,
    'quantity': quantity,
    'price': price,
    'currency': currency,
  };
  factory ItemEntity.fromEntity(CartItemEntity entity) {
    return ItemEntity(
      name: entity.productEntity.name,
      quantity: entity.quantity,
      price: entity.productEntity.price.toString(),
      currency: getCurrency(),
    );
  }
}
