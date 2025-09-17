import 'dart:developer';

import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:fruit_hup/core/errors/exception.dart';
import 'package:fruit_hup/core/errors/failure.dart';
import 'package:fruit_hup/core/services/database_service.dart';
import 'package:fruit_hup/core/utils/backend_endpoint.dart';
import 'package:fruit_hup/features/auth/data/models/user_model.dart';
import 'package:fruit_hup/features/auth/domain/entities/user_entity.dart';
import 'package:fruit_hup/features/auth/domain/repositories/auth_repo.dart';

import '../../../../core/services/firebase_auth_service.dart';

class AuthRepoImpl implements AuthRepo {
  final FirebaseAuthService firebaseAuthService;
  final DatabaseService databaseService;

  AuthRepoImpl({
    required this.firebaseAuthService,
    required this.databaseService,
  });
  @override
  Future<Either<Failure, UserEntity>> createUserWithEmailAndPassword({
    required String name,
    required String email,
    required String password,
  }) async {
    User? user;
    try {
      user = await firebaseAuthService.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );
      var userEntity = UserEntity(name: name, email: email, uId: user.uid);
      addUserData(user: userEntity);
      return right(userEntity);
    } on CustomException catch (e) {
      await checkDeleteUser(user);
      return left(ServerFailure(e.message));
    } catch (e) {
      await checkDeleteUser(user);
      log('Exception in AuthRepoImpl.createUserWithEmailAndPassword: $e');
      return left(const ServerFailure('حدث خطأ. يرجى المحاولة مرة أخرى.'));
    }
  }

  Future<void> checkDeleteUser(User? user) async {
    if (user != null) {
      await firebaseAuthService.deleteUSer();
    }
  }

  @override
  Future<Either<Failure, UserEntity>> signInWithEmailAndPassword({
    required String email,
    required String password,
  }) async {
    try {
      final user = await firebaseAuthService.signInWithEmailAndPassword(
        email: email,
        password: password,
      );

      final userEnitiy = await getUserData(uId: user.uid);
      return right(userEnitiy);
    } on CustomException catch (e) {
      return left(ServerFailure(e.message));
    } catch (e) {
      log('Exception in AuthRepoImpl.signInWithEmailAndPassword: $e');
      return left(const ServerFailure('حدث خطأ. يرجى المحاولة مرة أخرى.'));
    }
  }

  @override
  Future<Either<Failure, UserEntity>> signInWithGoogle() async {
    User? user;
    try {
      user = await firebaseAuthService.signInWithGoogle();

      final userEntity = UserModel.fromFirebase(user);

      final isUserEsxists = await databaseService.checkIfDataExists(
        path: BackendEndpoint.isUserExist,
        documentId: user.uid,
      );

      if (isUserEsxists) {
        await getUserData(uId: user.uid);
      } else {
        await addUserData(user: userEntity);
      }
      return right(userEntity);
    } catch (e) {
      await checkDeleteUser(user);

      log('Exception in AuthRepoImpl.signInWithGoogle: $e');
      return left(const ServerFailure('حدث خطأ. يرجى المحاولة مرة أخرى.'));
    }
  }

  @override
  Future<Either<Failure, UserEntity>> signInWithFacebook() async {
    User? user;
    try {
      user = await firebaseAuthService.signInWithFacebook();
      final userEntity = UserModel.fromFirebase(user);
      return right(userEntity);
    } catch (e) {
      await checkDeleteUser(user);
      log('Exception in AuthRepoImpl.signInWithFacebook: $e');
      return left(const ServerFailure('حدث خطأ. يرجى المحاولة مرة أخرى.'));
    }
  }

  @override
  Future addUserData({required UserEntity user}) async {
    await databaseService.addData(
      path: BackendEndpoint.addUserData,
      data: user.toMap(),
      documentId: user.uId,
    );
  }

  @override
  Future<UserEntity> getUserData({required String uId}) async {
    final userData = await databaseService.getData(
      path: BackendEndpoint.getUserData,
      documentId: uId,
    );
    return UserModel.fromJson(userData);
  }
}
