// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:io';

import '../entities/product_entity.dart';
import '../entities/review_entity.dart';
import 'review_model.dart';



class ProductModel {
  final String name;
  final String code;
  final String description;
  final num price;
  final File fileImage;
  final bool isFeatured;
  String? imageUrl;
  final int expirationMonths;
  final bool iSOrganic;
  final int numberOfCalories;
  final num avgRating = 0;
  final num ratingCount = 0;
  final int unitAmount;
  final List<ReviewModel> revirws;

  ProductModel({
    required this.name,
    required this.code,
    required this.description,
    required this.price,
    required this.fileImage,
    required this.isFeatured,
    this.imageUrl,
    required this.expirationMonths,
    this.iSOrganic = false,
    required this.numberOfCalories,
    required this.unitAmount,
    required this.revirws,
  });

  factory ProductModel.fromEntity(ProductEntity addProductEntity) {
    return ProductModel(
      name: addProductEntity.name,
      code: addProductEntity.code,
      description: addProductEntity.description,
      price: addProductEntity.price,
      fileImage: addProductEntity.fileImage,
      isFeatured: addProductEntity.isFeatured,
      iSOrganic: addProductEntity.iSOrganic,
      imageUrl: addProductEntity.imageUrl,
      expirationMonths: addProductEntity.expirationMonths,
      numberOfCalories: addProductEntity.numberOfCalories,
      unitAmount: addProductEntity.unitAmount,
      revirws: addProductEntity.reviews
          .map((e) => ReviewModel.fromEntity(e))
          .toList(),
    );
  }

  toJson() {
    return {
      'name': name,
      'code': code,
      'description': description,
      'price': price,
      'isFeatured': isFeatured,
      'imageUrl': imageUrl,
      'expirationMonths': expirationMonths,
      'numberOfCalories': numberOfCalories,
      'avgRating': avgRating,
      'ratingCount': ratingCount,
      'unitAmount': unitAmount,
      'isOrganic': iSOrganic,
      'reviews': revirws.map((e) => e.toJson()).toList(),
    };
  }

  ProductEntity toEntity() {
    return ProductEntity(
      name: name,
      code: code,
      description: description,
      price: price,
      fileImage: fileImage,
      isFeatured: isFeatured,
      imageUrl: imageUrl,
      expirationMonths: expirationMonths,
      numberOfCalories: numberOfCalories,
      unitAmount: unitAmount,
      iSOrganic: iSOrganic,
      reviews: revirws.map((e) => e.toJson()).toList() as List<ReviewEntity>,
    );
  }
}
