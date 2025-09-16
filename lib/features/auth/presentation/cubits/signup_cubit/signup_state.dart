part of 'signup_cubit.dart';

sealed class SignupState extends Equatable {
  const SignupState();

  @override
  List<Object> get props => [];
}

final class SignupInitial extends SignupState {}

final class Signuploading extends SignupState {}

final class SignupSuccess extends SignupState {
  final UserEntity userEntity;

  const SignupSuccess({required this.userEntity});
}

final class SignupFailure extends SignupState {
  final String errorMessage;

  const SignupFailure({required this.errorMessage});
}
