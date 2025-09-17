import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fruit_hup/app.dart';
import 'package:fruit_hup/core/get_it.dart';
import 'package:fruit_hup/firebase_options.dart';

import 'core/helper/functions/bloc_observer.dart';
import 'core/services/shared_prefe_singleton.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  Bloc.observer = AppBlocObserver();

  setupGetIt();
  await SharedPrefs.init();
  runApp(const FruitsHup());
}
