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
      if (e.code == 'weak-password') {
        throw CustomException('الكلمة السرية ضعيفة.');
      } else if (e.code == 'email-already-in-use') {
        throw CustomException('البريد الإلكتروني مستخدم بالفعل.');
      } else if (e.code == 'user-not-found') {
        throw CustomException('لم يتم العثور على مستخدم بهذا البريد الإلكتروني.');
      } else if (e.code == 'wrong-password') {
        throw CustomException('الكلمة السرية غير صحيحة.');
      } else {
        throw CustomException('حدث خطأ. يرجى المحاولة مرة أخرى.');
      }
    } catch (e) {
      throw CustomException('حدث خطأ. يرجى المحاولة مرة أخرى.');
    }
  }
}
