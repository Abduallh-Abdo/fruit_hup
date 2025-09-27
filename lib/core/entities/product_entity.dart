// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:io';

import 'review_entity.dart';


class ProductEntity {
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
  final List<ReviewEntity> reviews;

  ProductEntity({
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
    required this.reviews,
  });
}
