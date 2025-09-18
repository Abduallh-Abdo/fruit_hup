import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fruit_hup/core/helper/extensions/navigations.dart';
import 'package:fruit_hup/core/utils/assets_manager.dart';
import 'package:fruit_hup/core/utils/constants.dart';
import 'package:fruit_hup/core/widgets/or_divider.dart';
import 'package:fruit_hup/core/widgets/custom_button.dart';
import 'package:fruit_hup/core/widgets/password_field.dart';
import 'package:fruit_hup/features/auth/presentation/cubits/login_cubit/login_cubit.dart';
import 'package:fruit_hup/features/auth/presentation/widgets/social_login_button.dart';

import '../../../../config/routes/app_routes.dart';
import '../../../../core/utils/app_colors.dart';
import '../../../../core/utils/app_text_styles.dart';
import '../../../../core/widgets/custom_text_form_field.dart';
import '../../../../core/widgets/dont_have_account_widget.dart';

class LoginViewBody extends StatefulWidget {
  const LoginViewBody({super.key});

  @override
  State<LoginViewBody> createState() => _LoginViewBodyState();
}

class _LoginViewBodyState extends State<LoginViewBody> {
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
  late String email, password;
  final formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: KHorizontalPadding),
      child: SingleChildScrollView(
        child: Form(
          key: formKey,
          autovalidateMode: autovalidateMode,
          child: Column(
            children: [
              const SizedBox(height: 24),
              CustomTextFormField(
                onSaved: (value) {
                  email = value!;
                },
                hintText: 'البريد الالكتروني',
                textInputType: TextInputType.emailAddress,
              ),
              const SizedBox(height: 16),
              PasswordField(
                onSaved: (value) {
                  password = value!;
                },
              ),
              const SizedBox(height: 16),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    'نسيت كلمة المرور؟',
                    style: AppTextStyles.semiBold13.copyWith(
                      color: AppColors.lightPrimaryColor,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 33),
              CustomButton(
                onPressed: () {
                  if (formKey.currentState!.validate()) {
                    formKey.currentState!.save();
                    context.read<LoginCubit>().signInWithEmailAndPassword(
                      email,
                      password,
                    );
                  } else {
                    autovalidateMode = AutovalidateMode.always;
                    setState(() {});
                  }
                },
                text: 'تسجيل الدخول',
              ),
              const SizedBox(height: 33),
              DontHaveAccountWidget(
                text: 'لا تمتلك حساب؟ ',
                textAction: 'قم بإنشاء حساب',
                onTap: () {
                  context.pushNamed(Routes.signUpView);
                },
              ),
              const SizedBox(height: 33),
              const OrDivider(),
              const SizedBox(height: 16),
              SocialLoginButton(
                image: Assets.imagesGoogleIcon,
                title: 'تسجيل  بواسطة جوجل',
                onPressed: () {
                  context.read<LoginCubit>().signInWithGoogle();
                },
              ),
              const SizedBox(height: 16),
            Platform.isIOS ?  Column(
                children: [
                  SocialLoginButton(
                    image: Assets.imagesAppleIcon,
                    title: 'تسجيل  بواسطة ابل',
                    onPressed: () {},
                  ),
                  const SizedBox(height: 16),
                ],
              ):const SizedBox(),
              SocialLoginButton(
                image: Assets.imagesFacebookIcon,
                title: 'تسجيل  بواسطة فيسبوك',
                onPressed: () {
                  // TODO: access permission from facebook meta for u
                  // context.read<LoginCubit>().signInWithFacebook();
                },
              ),
              const SizedBox(height: 16),
            ],
          ),
        ),
      ),
    );
  }
}
