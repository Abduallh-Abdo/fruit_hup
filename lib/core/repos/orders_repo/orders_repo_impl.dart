import 'dart:developer';

import 'package:dartz/dartz.dart';
import 'package:fruit_hup/core/errors/failure.dart';
import 'package:fruit_hup/core/repos/orders_repo/orders_repo.dart';
import 'package:fruit_hup/core/services/database_service.dart';
import 'package:fruit_hup/features/checkout/data/models/order_model.dart';
import 'package:fruit_hup/features/checkout/domain/entities/order_input_entity.dart';

import '../../utils/backend_endpoint.dart';

class OrdersRepoImpl implements OrdersRepo {
  final DatabaseService databaseService;

  OrdersRepoImpl({required this.databaseService});
  @override
  Future<Either<Failure, void>> addOrder({
    required OrderInputEntity orderEntity,
  }) async {
    try {
      await databaseService.addData(
        path: BackendEndpoint.addOrders,
        data: OrderModel.fromEntity(orderEntity).toJson(),
      );
      return const Right(null);
    } catch (e) {
      log("exception in OrdersRepoImpl.addOrder: $e");
      return const Left(ServerFailure('حدث خطأ. يرجى المحاولة مرة أخرى.'));
    }
  }
}
