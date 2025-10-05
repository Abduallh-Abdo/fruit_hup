import 'package:fruit_hup/features/checkout/domain/entities/shipping_address_entity.dart';
import 'package:fruit_hup/features/home/domain/entities/cart_entity.dart';

class OrderEntity {
  final CartEntity cartEntity;
  final bool? payWithCash;
  final ShippingAddressEntity? shippingAddressEntity;

  OrderEntity({
    required this.cartEntity,
     this.payWithCash,
     this.shippingAddressEntity,
  });
}
 