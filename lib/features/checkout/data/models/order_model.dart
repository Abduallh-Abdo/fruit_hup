// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:fruit_hup/features/checkout/data/models/order_product_model.dart';
import 'package:fruit_hup/features/checkout/data/models/shipping_address_model.dart';
import 'package:fruit_hup/features/checkout/domain/entities/order_input_entity.dart';
import 'package:uuid/uuid.dart';

class OrderModel {
  final String uId;
  final double totalPrice;
  final ShippingAddressModel shippingAddressModel;
  final List<OrderProductModel> orderProductModelList;
  final String paymentMethod;
  final String orderId;

  OrderModel({
    required this.uId,
    required this.totalPrice,
    required this.shippingAddressModel,
    required this.orderProductModelList,
    required this.paymentMethod,
    required this.orderId,
  });
  factory OrderModel.fromEntity(OrderInputEntity orderEntity) {
    return OrderModel(
      uId: orderEntity.uId,
      orderId: const Uuid().v4(),
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
      'orderId': orderId,
      'status': 'pending',
      'date': DateTime.now().toString(),
      'totalPrice': totalPrice,
      'shippingAddressModel': shippingAddressModel.toJson(),
      'orderProductModelList': orderProductModelList
          .map((e) => e.toJson())
          .toList(),
      'paymentMethod': paymentMethod,
    };
  }
}
