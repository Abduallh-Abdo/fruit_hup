import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:fruit_hup/features/auth/domain/repositories/auth_repo.dart';

import '../../../domain/entities/user_entity.dart';

part 'login_state.dart';

class LoginCubit extends Cubit<LoginState> {
  LoginCubit(this.authRepo) : super(LoginInitial());
  final AuthRepo authRepo;
  Future<void> signInWithEmailAndPassword(String email, String password) async {
    emit(LoginLoading());
    final result = await authRepo.signInWithEmailAndPassword(
      email: email,
      password: password,
    );
    result.fold(
      (failure) {
        emit(LoginFailure(errorMessage: failure.message));
      },
      (user) {
        emit(LoginSuccess(userEntity: user));
      },
    );
  }

  Future<void> signInWithGoogle() async {
    emit(LoginLoading());
    final result = await authRepo.signInWithGoogle();
    result.fold(
      (failure) {
        emit(LoginFailure(errorMessage: failure.message));
      },
      (user) {
        emit(LoginSuccess(userEntity: user));
      },
    );
  }

  Future<void> signInWithFacebook() async {
    emit(LoginLoading());
    final result = await authRepo.signInWithFacebook();
    result.fold(
      (failure) {
        emit(LoginFailure(errorMessage: failure.message));
      },
      (user) {
        emit(LoginSuccess(userEntity: user));
      },
    );
  }
}
