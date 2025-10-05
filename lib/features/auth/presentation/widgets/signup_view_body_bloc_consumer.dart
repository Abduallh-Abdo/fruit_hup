import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fruit_hup/core/helper/extensions/navigations.dart';
import 'package:fruit_hup/features/auth/presentation/cubits/signup_cubit/signup_cubit.dart';
import 'package:fruit_hup/features/auth/presentation/widgets/signup_view_body.dart';

import '../../../../core/helper/functions/build_error_bar.dart';
import '../../../../core/widgets/custom_progress_hud.dart';

class SignupViewBodyBlocConsumer extends StatelessWidget {
  const SignupViewBodyBlocConsumer({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<SignupCubit, SignupState>(
      listener: (context, state) {
        if (state is SignupSuccess) {
          context.pop();
        }
        if (state is SignupFailure) {
          showErrorBar(context, state.errorMessage);
        }
      },
      builder: (context, state) {
        return CustomProgressHud(
          isLoading: state is Signuploading ? true : false,
          child: const SignupViewBody(),
        );
      },
    );
  }
}
