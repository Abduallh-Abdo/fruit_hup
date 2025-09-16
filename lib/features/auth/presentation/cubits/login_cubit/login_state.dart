part of 'login_cubit.dart';

sealed class LoginState extends Equatable {
  const LoginState();

  @override
  List<Object> get props => [];
}

final class LoginInitial extends LoginState {}
final class LoginLoading extends LoginState {}
final class LoginSuccess extends LoginState {
  final UserEntity userEntity;
  const LoginSuccess({required this.userEntity});
  @override
  List<Object> get props => [userEntity];
}
final class LoginFailure extends LoginState {
  final String errorMessage;
  const LoginFailure({required this.errorMessage});
  @override
  List<Object> get props => [errorMessage];
}
