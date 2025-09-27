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
  final num sellingCount;

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
    required this.sellingCount,
  });

  factory ProductModel.fromJson(Map<String, dynamic> json) {
    return ProductModel(
      name: json['name'],
      code: json['code'],
      description: json['description'],
      price: json['price'],
      fileImage: File(json['fileImage']),
      isFeatured: json['isFeatured'],
      imageUrl: json['imageUrl'],
      expirationMonths: json['expirationMonths'],
      iSOrganic: json['isOrganic'],
      numberOfCalories: json['numberOfCalories'],
      unitAmount: json['unitAmount'],
      revirws: json['reviews'].map((e) => ReviewModel.fromJson(e)).toList(),
      sellingCount: json['sellingCount'],
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
      'sellingCount': sellingCount,
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
