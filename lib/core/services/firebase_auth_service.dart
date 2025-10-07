import 'dart:developer';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:fruit_hup/core/errors/exception.dart';
import 'package:google_sign_in/google_sign_in.dart';

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
      } else if (e.code == 'wrong-password' || e.code == 'invalid-credential') {
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

  Future<User> signInWithGoogle() async {
    final GoogleSignIn googleSignIn = GoogleSignIn.instance;
    await googleSignIn.initialize();
    await googleSignIn.signOut();
    final GoogleSignInAccount googleUser = await googleSignIn.authenticate();

    final GoogleSignInAuthentication googleAuth = googleUser.authentication;
    final OAuthCredential credential = GoogleAuthProvider.credential(
      idToken: googleAuth.idToken,
    );

    final UserCredential userCredential = await FirebaseAuth.instance
        .signInWithCredential(credential);

    return userCredential.user!;
  }

  // Future<User> signInWithFacebook() async {
  //   final LoginResult loginResult = await FacebookAuth.instance.login();

  //   final OAuthCredential facebookAuthCredential =
  //       FacebookAuthProvider.credential(loginResult.accessToken!.tokenString);

  //   return (await FirebaseAuth.instance.signInWithCredential(
  //     facebookAuthCredential,
  //   )).user!;
  // }

  Future<void> deleteUSer() async {
    await FirebaseAuth.instance.currentUser!.delete();
  }

  Future<void> signOut() async {
    await FirebaseAuth.instance.signOut();
  }

  bool isLogged() {
    return FirebaseAuth.instance.currentUser != null;
  }
}
