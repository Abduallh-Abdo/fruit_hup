import 'package:dartz/dartz.dart';
import 'package:fruit_hup/core/entities/product_entity.dart';

import '../../errors/failure.dart';

abstract class ProductsRepo {
  Future<Either<Failure, List<ProductEntity>>> getProducts();
  Future<Either<Failure, List<ProductEntity>>> getBestSellingProducts();
}
