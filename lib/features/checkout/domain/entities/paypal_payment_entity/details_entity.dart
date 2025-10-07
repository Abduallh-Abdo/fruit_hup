import 'package:fruit_hup/features/checkout/domain/entities/order_entity.dart';

class DetailsEntity {
  String? subtotal;
  String? shipping;
  double? shippingDiscount;

  DetailsEntity({this.subtotal, this.shipping, this.shippingDiscount});

  Map<String, dynamic> toJson() => {
    'subtotal': subtotal,
    'shipping': shipping,
    'shipping_discount': shippingDiscount,
  };

  factory DetailsEntity.fromEntity(OrderEntity entity) {
    return DetailsEntity(
      subtotal: entity.cartEntity.getTotalPrice().toString(),
      shipping: entity.calculateshippingPrice().toString(),
      shippingDiscount: entity.calculateshippingDiscount(),
    );
  }
}
