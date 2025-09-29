import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:fruit_hup/core/repos/products_repo/products_repo.dart';

import '../../entities/product_entity.dart';

part 'procduct_state.dart';

class ProductCubit extends Cubit<ProductState> {
  ProductCubit({required this.productsRepo}) : super(ProductInitial());
  final ProductsRepo productsRepo;
  Future<void> getProducts() async {
    emit(ProductLoading());
    final result = await productsRepo.getProducts();
    result.fold(
      (failure) => emit(ProductFailure(errorMessage: failure.message)),
      (product) => emit(ProductSuccess(products: product)),
    );
  }

  Future<void> getBestSellingProducts() async {
    emit(ProductLoading());
    final result = await productsRepo.getBestSellingProducts();
    result.fold(
      (failure) => emit(ProductFailure(errorMessage: failure.message)),
      (product) => emit(ProductSuccess(products: product)),
    );
  }
}
