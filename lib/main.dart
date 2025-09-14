import 'package:flutter/material.dart';
import 'package:fruit_hup/app.dart';

import 'core/services/shared_prefe_singleton.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await SharedPrefs.init();
  runApp(const FruitsHup());
}
