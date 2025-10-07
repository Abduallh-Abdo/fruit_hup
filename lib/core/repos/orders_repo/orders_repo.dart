import 'package:dartz/dartz.dart';
import 'package:fruit_hup/core/errors/failure.dart';

import '../../../features/checkout/domain/entities/order_entity.dart';

abstract class OrdersRepo {
  Future<Either<Failure,void>> addOrder({required OrderEntity orderEntity});
}