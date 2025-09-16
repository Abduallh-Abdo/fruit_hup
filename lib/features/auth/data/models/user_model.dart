import 'package:firebase_auth/firebase_auth.dart';
import 'package:fruit_hup/features/auth/domain/entities/user_entity.dart';

class UserModel extends UserEntity {
  UserModel({
    required super.name,
    required super.email,
    required super.uId,
  });

  factory UserModel.fromFirebase(User uer) {
    return UserModel(
      name: uer.displayName ?? '',
      email: uer.email ?? '',
      uId: uer.uid ,
    );
  }
}
