class ShippingAddressEntity {
  String? name;
  String? email;
  String? address;
  String? city;
  String? floor;
  String? phone;

  ShippingAddressEntity({
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
}
