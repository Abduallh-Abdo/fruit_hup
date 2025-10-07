import 'dart:convert';

import 'package:fruit_hup/core/services/shared_prefe_singleton.dart';
import 'package:fruit_hup/core/utils/constants.dart';
import 'package:fruit_hup/features/auth/data/models/user_model.dart';
import 'package:fruit_hup/features/auth/domain/entities/user_entity.dart';

//* convert json to user entity
UserEntity getUser() {
  var jsonData = SharedPrefs.getString(key: kUserData);
  var userEntity = UserModel.fromJson(jsonDecode(jsonData!));
  return userEntity;
}
