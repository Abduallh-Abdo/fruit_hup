import 'package:fruit_hup/features/checkout/data/models/order_product_model.dart';
import 'package:fruit_hup/features/checkout/data/models/shipping_address_model.dart';
import 'package:fruit_hup/features/checkout/domain/entities/order_entity.dart';

class OrderModel {
  final String uId;
  final double totalPrice;
  final ShippingAddressModel shippingAddressModel;
  final List<OrderProductModel> orderProductModelList;
  final String paymentMethod;

  OrderModel({
    required this.uId,
    required this.totalPrice,
    required this.shippingAddressModel,
    required this.orderProductModelList,
    required this.paymentMethod,
  });
  factory OrderModel.fromEntity(OrderEntity orderEntity) {
    return OrderModel(
      uId: orderEntity.uId,
      totalPrice: orderEntity.cartEntity.getTotalPrice(),
      shippingAddressModel: ShippingAddressModel.fromEntity(
        orderEntity.shippingAddressEntity,
      ),
      orderProductModelList: orderEntity.cartEntity.cartItmes
          .map((e) => OrderProductModel.fromEntity(e))
          .toList(),
      paymentMethod: orderEntity.payWithCash! ? 'cash' : 'online',
    );
  }
  toJson() {
    return {
      'uId': uId,
      'totalPrice': totalPrice,
      'shippingAddressModel': shippingAddressModel.toJson(),
      'orderProductModelList': orderProductModelList
          .map((e) => e.toJson())
          .toList(),
      'paymentMethod': paymentMethod,
    };
  }
}
