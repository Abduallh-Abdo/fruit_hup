import 'package:fruit_hup/features/checkout/domain/entities/shipping_address_entity.dart';
import 'package:fruit_hup/features/home/domain/entities/cart_entity.dart';

class OrderInputEntity {
  final String uId;
  final CartEntity cartEntity;
  bool? payWithCash;
  ShippingAddressEntity shippingAddressEntity;

  OrderInputEntity({
    required this.cartEntity,
    required this.uId,
    this.payWithCash,
    required this.shippingAddressEntity,
  });

  double calculateshippingPrice() {
    if (payWithCash!) {
      return 30;
    } else {
      return 0;
    }
  }

  double calculateshippingDiscount() {
    return 0;
  }

  double getTotalPriceAfterDiscountAndShipping() {
    return cartEntity.getTotalPrice() +
        calculateshippingPrice() -
        calculateshippingDiscount();
  }
}
