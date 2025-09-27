import 'dart:developer';

import 'package:dartz/dartz.dart';

import 'package:fruit_hup/core/entities/product_entity.dart';

import 'package:fruit_hup/core/errors/failure.dart';
import 'package:fruit_hup/core/models/product_model.dart';
import 'package:fruit_hup/core/services/database_service.dart';

import '../../utils/backend_endpoint.dart';
import 'products_repo.dart';

class ProductsRepoImpl implements ProductsRepo {
  final DatabaseService databaseService;

  ProductsRepoImpl({required this.databaseService});
  @override
  Future<Either<Failure, List<ProductEntity>>> getBestSellingProducts() async {
    try {
      final data =
          await databaseService.getData(
                path: BackendEndpoint.getProducts,

                query: {
                  'orderBy': 'sellingCount',
                  'limit': 10,
                  'descending': true,
                },
              )
              as List<Map<String, dynamic>>;

      return Right(
        data.map((e) => ProductModel.fromJson(e).toEntity()).toList(),
      );
    } catch (e) {
      log(e.toString());
      return const Left(ServerFailure('حدث خطأ. يرجى المحاولة مرة أخرى.'));
    }
  }

  @override
  Future<Either<Failure, List<ProductEntity>>> getProducts() async {
    try {
      final data =
          await databaseService.getData(path: BackendEndpoint.getProducts)
              as List<Map<String, dynamic>>;

      List<ProductModel> products = data
          .map((e) => ProductModel.fromJson(e))
          .toList();
      List<ProductEntity> productEntities = products
          .map((e) => e.toEntity())
          .toList();
      return Right(productEntities);
      //* are the same way as below
      // return Right(data.map((e) => ProductModel.fromJson(e).toEntity()).toList());
    } catch (e) {
      log(e.toString());
      return const Left(ServerFailure('حدث خطأ. يرجى المحاولة مرة أخرى.'));
    }
  }
}
