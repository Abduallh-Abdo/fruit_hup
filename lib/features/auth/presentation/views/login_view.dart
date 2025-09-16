import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fruit_hup/features/auth/presentation/cubits/login_cubit/login_cubit.dart';

import '../../../../core/get_it.dart';
import '../../../../core/widgets/custom_app_bar.dart';
import '../../domain/repositories/auth_repo.dart';
import '../widgets/login_view_body_bloc_consumer.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => LoginCubit(sl.get<AuthRepo>()),
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: customAppBar(context: context, title: 'تسجيل الدخول'),
        body: const LoginViewBodyBlocConsumer(),
      ),
    );
  }
}
