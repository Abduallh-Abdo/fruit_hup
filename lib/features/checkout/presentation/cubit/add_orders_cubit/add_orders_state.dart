part of 'add_orders_cubit.dart';

sealed class AddOrdersState extends Equatable {
  const AddOrdersState();

  @override
  List<Object> get props => [];
}

final class AddOrdersInitial extends AddOrdersState {}

final class AddOrdersLoading extends AddOrdersState {}

final class AddOrdersSuccess extends AddOrdersState {}

final class AddOrdersFailure extends AddOrdersState {
  final String errorMessage;

  const AddOrdersFailure({required this.errorMessage});
}
