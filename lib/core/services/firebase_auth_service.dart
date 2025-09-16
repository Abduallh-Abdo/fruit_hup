import 'dart:developer';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:fruit_hup/core/errors/exception.dart';

class FirebaseAuthService {
  Future<User> createUserWithEmailAndPassword({
    required String email,
    required String password,
  }) async {
    try {
      final credential = await FirebaseAuth.instance
          .createUserWithEmailAndPassword(email: email, password: password);
      return credential.user!;
    } on FirebaseAuthException catch (e) {
      log(
        'Exception in FirebaseAuthService.createUserWithEmailAndPassword: $e',
      );

      if (e.code == 'weak-password') {
        throw CustomException('الكلمة السرية ضعيفة.');
      } else if (e.code == 'email-already-in-use') {
        throw CustomException('البريد الإلكتروني مستخدم بالفعل.');
      } else if (e.code == 'network-request-failed') {
        throw CustomException(
          'لا يوجد إتصال بالإنترنت. يرجى التحقق من الاتصال والمحاولة مرة أخرى.',
        );
      } else {
        throw CustomException('حدث خطأ. يرجى المحاولة مرة أخرى.');
      }
    } catch (e) {
      log(
        'Exception in AuthRepoImpl.createUserWithEmailAndPassword: $e and code is ${e.hashCode}',
      );

      throw CustomException('حدث خطأ. يرجى المحاولة مرة أخرى.');
    }
  }

  Future<User> signInWithEmailAndPassword({
    required String email,
    required String password,
  }) async {
    try {
      final credential = await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: email,
        password: password,
      );
      return credential.user!;
    } on FirebaseAuthException catch (e) {
      log('Exception in FirebaseAuthService.signInWithEmailAndPassword: $e');
      if (e.code == 'user-not-found') {
        throw CustomException(
          'البريد الإلكتروني او كلمة المرور غير صحيحة. يرجى المحاولة مرة أخرى.',
        );
      } else if (e.code == 'wrong-password') {
        throw CustomException(
          'البريد الإلكتروني او كلمة المرور غير صحيحة. يرجى المحاولة مرة أخرى.',
        );
      } else if (e.code == 'network-request-failed') {
        throw CustomException(
          'لا يوجد إتصال بالإنترنت. يرجى التحقق من الاتصال والمحاولة مرة أخرى.',
        );
      } else {
        throw CustomException('حدث خطأ. يرجى المحاولة مرة أخرى.');
      }
    } catch (e) {
      log(
        'Exception in AuthRepoImpl.signInWithEmailAndPassword: $e and code is ${e.hashCode}',
      );

      throw CustomException('حدث خطأ. يرجى المحاولة مرة أخرى.');
    }
  }
}
