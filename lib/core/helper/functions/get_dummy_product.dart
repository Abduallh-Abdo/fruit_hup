import 'dart:io';

import 'package:fruit_hup/core/entities/product_entity.dart';

ProductEntity getDummyProduct() {
  return ProductEntity(
    name: 'Apple',
    code: '123',
    description: 'A fruit',
    price: 10,
    fileImage: File(''),
    isFeatured: true,
    imageUrl: 'https://example.com/apple.jpg',
    expirationMonths: 6,
    numberOfCalories: 100,
    unitAmount: 1,
    iSOrganic: true,
    reviews: [],
  );
}

List<ProductEntity> getDummyProducts() {
  return List.generate(5, (index) => getDummyProduct());
}
