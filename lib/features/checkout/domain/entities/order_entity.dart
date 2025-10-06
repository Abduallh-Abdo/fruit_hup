import 'package:fruit_hup/features/checkout/domain/entities/shipping_address_entity.dart';
import 'package:fruit_hup/features/home/domain/entities/cart_entity.dart';

class OrderEntity {
  final String uId;
  final CartEntity cartEntity;
  bool? payWithCash;
  ShippingAddressEntity shippingAddressEntity;

  OrderEntity({
    required this.cartEntity,
    required this.uId,
    this.payWithCash,
    required this.shippingAddressEntity,
  });
}
