import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:fruit_hup/core/repos/products_repo/products_repo.dart';

import '../../entities/product_entity.dart';

part 'procduct_state.dart';

class ProcductCubit extends Cubit<ProcductState> {
  ProcductCubit(this.productsRepo) : super(ProcductInitial());
  final ProductsRepo productsRepo;
  Future<void> getProducts() async {
    emit(ProcductLoading());
    final result = await productsRepo.getProducts();
    result.fold(
      (failure) => emit(ProcductFailure(errorMessage: failure.message)),
      (product) => emit(ProcductSuccess(products: product)),
    );
  }
  Future<void> getBestSellingProducts() async {
    emit(ProcductLoading());
    final result = await productsRepo.getBestSellingProducts();
    result.fold(
      (failure) => emit(ProcductFailure(errorMessage: failure.message)),
      (product) => emit(ProcductSuccess(products: product)),
    );
  }
}
