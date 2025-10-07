import 'package:fruit_hup/features/checkout/domain/entities/order_entity.dart';

import 'amount_entity.dart';
import 'item_list_entity.dart';

class PaypalPaymentEntity {
  AmountEntity? amount;
  String? description;
  ItemListEntity? itemList;

  PaypalPaymentEntity({this.amount, this.description, this.itemList});

  Map<String, dynamic> toJson() => {
    'amount': amount?.toJson(),
    'description': description,
    'item_list': itemList?.toJson(),
  };

  factory PaypalPaymentEntity.fromEntity(OrderEntity entity) {
    return PaypalPaymentEntity(
      amount: AmountEntity.fromEntity(entity),
      description: 'payPal description',
      itemList: ItemListEntity.fromEntity(entity.cartEntity.cartItmes),
    );
  }
}
