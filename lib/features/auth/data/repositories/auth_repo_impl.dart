import 'package:dartz/dartz.dart';
import 'package:fruit_hup/core/errors/exception.dart';
import 'package:fruit_hup/core/errors/failure.dart';
import 'package:fruit_hup/features/auth/data/models/user_model.dart';
import 'package:fruit_hup/features/auth/domain/entities/user_entity.dart';
import 'package:fruit_hup/features/auth/domain/repositories/auth_repo.dart';

import '../../../../core/services/firebase_auth_service.dart';

class AuthRepoImpl implements AuthRepo {
  final FirebaseAuthService firebaseAuthService;

  AuthRepoImpl({required this.firebaseAuthService});
  @override
  Future<Either<Failure, UserEntity>> createUserWithEmailAndPassword({
    required String name,
    required String email,
    required String password,
  }) async {
    try {
      final user = await firebaseAuthService.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );
      return right(UserModel.fromFirebase(user));
    } on CustomException catch (e) {
      return left(ServerFailure(e.message));
    } catch (e) {
      return left(
        const ServerFailure('An error occurred. Please try again later.'),
      );
    }
  }
}
