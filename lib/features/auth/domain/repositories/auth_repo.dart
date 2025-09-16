import 'package:dartz/dartz.dart';
import 'package:fruit_hup/features/auth/domain/entities/user_entity.dart';

import '../../../../core/errors/failure.dart';

abstract class AuthRepo {
  Future<Either<Failure, UserEntity>> createUserWithEmailAndPassword({
    required String email,
    required String password,
  });
}
