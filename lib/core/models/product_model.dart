import '../entities/product_entity.dart';
import '../helper/functions/get_avg_rating.dart';
import 'review_model.dart';

class ProductModel {
  final String name;
  final String code;
  final String description;
  final num price;
  final bool isFeatured;
  String? imageUrl;
  final int expirationMonths;
  final bool iSOrganic;
  final int numberOfCalories;
  final num avgRating;
  final num ratingCount = 0;
  final int unitAmount;
  final List<ReviewModel> revirws;
  final num sellingCount;

  ProductModel({
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
    required this.revirws,
    required this.sellingCount,
    required this.avgRating,
  });

  factory ProductModel.fromJson(Map<String, dynamic> json) {
    final reviews = json['reviews'] != null
        ? List<ReviewModel>.from(
            json['reviews'].map((e) => ReviewModel.fromJson(e)),
          )
        : [];
    return ProductModel(
      name: json['name'],
      code: json['code'],
      description: json['description'],
      price: json['price'],
      isFeatured: json['isFeatured'],
      imageUrl: json['imageUrl'],
      expirationMonths: json['expirationMonths'],
      iSOrganic: json['isOrganic'],
      numberOfCalories: json['numberOfCalories'],
      unitAmount: json['unitAmount'],
      revirws: reviews as List<ReviewModel>,
      sellingCount: json['sellingCount'],
      avgRating: getAvgRating(reviews.map((e) => e.toEntity()).toList()),
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
      isFeatured: isFeatured,
      imageUrl: imageUrl,
      expirationMonths: expirationMonths,
      numberOfCalories: numberOfCalories,
      unitAmount: unitAmount,
      iSOrganic: iSOrganic,
      reviews: revirws.map((e) => e.toEntity()).toList(),
      avgRating: avgRating,
    );
  }
}
