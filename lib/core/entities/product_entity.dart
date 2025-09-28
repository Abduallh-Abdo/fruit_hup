import 'review_entity.dart';


class ProductEntity {
  final String name;
  final String code;
  final String description;
  final num price;
  final bool isFeatured;
  String? imageUrl;
  final int expirationMonths;
  final bool iSOrganic;
  final int numberOfCalories;
  final num avgRating ;
  final num ratingCount = 0;
  final int unitAmount;
  final List<ReviewEntity> reviews;

  ProductEntity({
    required this.name,
    required this.code,
    required this.description,
    required this.price,
    required this.isFeatured,
    this.imageUrl,
    required this.expirationMonths,
    this.iSOrganic = false,
    required this.numberOfCalories,
    required this.unitAmount,
    required this.reviews,
    required this.avgRating
  });
}
