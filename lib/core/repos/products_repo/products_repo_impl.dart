import 'package:dartz/dartz.dart';

import 'package:fruit_hup/core/entities/product_entity.dart';

import 'package:fruit_hup/core/errors/failure.dart';

import 'products_repo.dart';

class ProductsRepoImpl implements ProductsRepo {
  @override
  Future<Either<Failure, List<ProductEntity>>> getBestSellingProducts() {
    // TODO: implement getBestSellingProducts
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, List<ProductEntity>>> getProducts() {
    // TODO: implement getProducts
    throw UnimplementedError();
  }
 
}
