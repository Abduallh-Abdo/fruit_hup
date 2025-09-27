part of 'procduct_cubit.dart';

sealed class ProcductState extends Equatable {
  const ProcductState();

  @override
  List<Object> get props => [];
}

final class ProcductInitial extends ProcductState {}

final class ProcductLoading extends ProcductState {}

final class ProcductFailure extends ProcductState {
  final String errorMessage;

  const ProcductFailure({required this.errorMessage});
}

final class ProcductSuccess extends ProcductState {
  final List<ProductEntity> products;

  const ProcductSuccess({required this.products});
}
