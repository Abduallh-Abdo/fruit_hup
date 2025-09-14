import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:fruit_hup/config/routes/app_routes.dart';
import 'package:fruit_hup/core/utils/assets_manager.dart';

import '../../../../core/services/shared_prefe_singleton.dart';
import '../../../../core/utils/constants.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({super.key});

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody> {
  @override
  void initState() {
    super.initState();
    excuteNavigation();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          mainAxisAlignment:
              Localizations.localeOf(context).languageCode == 'ar'
              ? MainAxisAlignment.end
              : MainAxisAlignment.start,
          children: [SvgPicture.asset(Assets.imagesPlant)],
        ),
        SvgPicture.asset(Assets.imagesLogo),
        SvgPicture.asset(Assets.imagesSplashBottom, fit: BoxFit.fill),
      ],
    );
  }

  excuteNavigation() {
    bool isOnBoardingSeen = SharedPrefs.getBool(key: KisFirst);

    Future.delayed(const Duration(seconds: 3), () {
      if (isOnBoardingSeen) {
        Navigator.pushReplacementNamed(context, Routes.loginView);
      } else {
        Navigator.pushReplacementNamed(context, Routes.onBoarding);
      }
    });
  }
}
