import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:fruit_hup/features/auth/domain/entities/user_entity.dart';
import 'package:fruit_hup/features/auth/domain/repositories/auth_repo.dart';

part 'signup_state.dart';

class SignupCubit extends Cubit<SignupState> {
  SignupCubit(this.authRepo) : super(SignupInitial());
  final AuthRepo authRepo;

  Future<void> createUserWithEmailAndPassword(
    String name,
    String email,
    String password,
  ) async {
    emit(Signuploading());
    final result = await authRepo.createUserWithEmailAndPassword(
      name: name,
      email: email,
      password: password,
    );
    result.fold(
      (failure) {
        emit(SignupFailure(errorMessage: failure.message));
      },
      (user) {
        emit(SignupSuccess(userEntity: user));
      },
    );
  }
}
