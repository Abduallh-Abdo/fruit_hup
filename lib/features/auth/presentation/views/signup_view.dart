import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fruit_hup/core/get_it.dart';
import 'package:fruit_hup/core/widgets/custom_app_bar.dart';
import 'package:fruit_hup/features/auth/presentation/cubits/signup_cubit/signup_cubit.dart';

import '../../domain/repositories/auth_repo.dart';
import '../widgets/signup_view_body_bloc_consumer.dart';

class SignupView extends StatelessWidget {
  const SignupView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => SignupCubit(sl<AuthRepo>()),
      child: Scaffold(
        appBar: CustomAppBar(title: 'حساب جديد', context: context),
        body: const SignupViewBodyBlocConsumer(),
      ),
    );
  }
}
