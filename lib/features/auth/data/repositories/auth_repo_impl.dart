import 'package:dartz/dartz.dart';
import 'package:fruit_hup/core/errors/failure.dart';
import 'package:fruit_hup/features/auth/domain/entities/user_entity.dart';
import 'package:fruit_hup/features/auth/domain/repositories/auth_repo.dart';

class AuthRepoImpl implements AuthRepo {
  @override
  Future<Either<Failure, UserEntity>> createUserWithEmailAndPassword({required String email, required String password}) {
    // TODO: implement createUserWithEmailAndPassword
    throw UnimplementedError();
  }
}