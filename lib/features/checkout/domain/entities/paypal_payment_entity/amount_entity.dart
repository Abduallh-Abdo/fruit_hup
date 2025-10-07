import 'package:fruit_hup/core/helper/functions/get_currency.dart';
import 'package:fruit_hup/features/checkout/domain/entities/order_entity.dart';

import 'details_entity.dart';

class AmountEntity {
  String? total;
  String? currency;
  DetailsEntity? details;

  AmountEntity({this.total, this.currency, this.details});

  Map<String, dynamic> toJson() => {
    'total': total,
    'currency': currency,
    'details': details?.toJson(),
  };

  factory AmountEntity.fromEntity(OrderEntity entity) {
    return AmountEntity(
      total: entity.getTotalPriceAfterDiscountAndShipping().toString(),
      currency: getCurrency(),
      details: DetailsEntity.fromEntity(entity),
    );
  }
}
