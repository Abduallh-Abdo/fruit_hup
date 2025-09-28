import 'dart:developer';

import '../../entities/review_entity.dart';

num getAvgRating(List<ReviewEntity> reviews) {
  double sum = 0.0;
  for (var review in reviews) {
    sum += review.ratting;
  }
  try {
    return sum / reviews.length;
  } catch (e) {
    log('Exception in getAvgRating: $e');
    return 0;
  }
}
