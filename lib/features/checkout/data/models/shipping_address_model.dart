import 'package:fruit_hup/features/checkout/domain/entities/shipping_address_entity.dart';

class ShippingAddressModel {
  String? name;
  String? email;
  String? address;
  String? city;
  String? floor;
  String? phone;

  ShippingAddressModel({
    this.name,
    this.email,
    this.address,
    this.city,
    this.floor,
    this.phone,
  });
  @override
  String toString() {
    return '$address, $city, $floor';
  }

  factory ShippingAddressModel.fromEntity(
    ShippingAddressEntity shippingAddressEntity,
  ) {
    return ShippingAddressModel(
      name: shippingAddressEntity.name,
      email: shippingAddressEntity.email,
      address: shippingAddressEntity.address,
      city: shippingAddressEntity.city,
      floor: shippingAddressEntity.floor,
      phone: shippingAddressEntity.phone,
    );
  }

  toJson() {
    return {
      'name': name,
      'email': email,
      'address': address,
      'city': city,
      'floor': floor,
      'phone': phone,
    };
  }
}
