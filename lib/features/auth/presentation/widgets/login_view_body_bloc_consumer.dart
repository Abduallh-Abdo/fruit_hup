
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fruit_hup/core/widgets/custom_progress_hud.dart';
import 'package:fruit_hup/features/auth/presentation/widgets/login_view_body.dart';
import '../../../../core/helper/functions/build_error_bar.dart';
import '../cubits/login_cubit/login_cubit.dart';

class LoginViewBodyBlocConsumer extends StatelessWidget {
  const LoginViewBodyBlocConsumer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<LoginCubit, LoginState>(
      listener: (context, state) {
        if (state is LoginSuccess) {
          // Navigator.of(context).pushReplacementNamed(AppRoutes.homeRoute);
        }
        if (state is LoginFailure) {
          buildErrorBar(context, state.errorMessage);
        }
      },
      builder: (context, state) {
        return CustomProgressHud(
          isLoading: state is LoginLoading ? true : false,
          child: const LoginViewBody());
      },
    );
  }
}
