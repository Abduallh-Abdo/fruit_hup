import 'package:fruit_hup/features/checkout/domain/entities/shipping_address_entity.dart';
import 'package:fruit_hup/features/home/domain/entities/cart_item_entity.dart';

class OrderEntity {
  final List<CartItemEntity> cartItems;
  final bool payWithCash;
  final ShippingAddressEntity shippingAddressEntity;

  OrderEntity({
    required this.cartItems,
    required this.payWithCash,
    required this.shippingAddressEntity,
  });
}
 