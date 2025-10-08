import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:fruit_hup/core/repos/orders_repo/orders_repo.dart';

import '../../../domain/entities/order_input_entity.dart';

part 'add_orders_state.dart';

class AddOrdersCubit extends Cubit<AddOrdersState> {
  AddOrdersCubit({required this.ordersRepo}) : super(AddOrdersInitial());
  final OrdersRepo ordersRepo;

  Future<void> addOrders({required OrderInputEntity orderEntity}) async {
    emit(AddOrdersLoading());
    final result = await ordersRepo.addOrder(orderEntity: orderEntity);
    result.fold(
      (failure) => emit(AddOrdersFailure(errorMessage: failure.message)),
      (r) => emit(AddOrdersSuccess()),
    );
  }
}
