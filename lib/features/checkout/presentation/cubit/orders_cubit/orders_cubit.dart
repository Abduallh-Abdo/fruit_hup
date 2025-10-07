import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:fruit_hup/core/repos/orders_repo/orders_repo.dart';

import '../../../domain/entities/order_entity.dart';

part 'orders_state.dart';

class OrdersCubit extends Cubit<OrdersState> {
  OrdersCubit({required this.ordersRepo}) : super(OrdersInitial());
  final OrdersRepo ordersRepo;

  Future<void> addOrders({required OrderEntity orderEntity}) async {
    emit(OrdersLoading());
    final result = await ordersRepo.addOrder(orderEntity: orderEntity);
    result.fold(
      (failure) => emit(OrdersFailure(errorMessage: failure.message)),
      (r) => emit(OrdersSuccess()),
    );
  }
}
