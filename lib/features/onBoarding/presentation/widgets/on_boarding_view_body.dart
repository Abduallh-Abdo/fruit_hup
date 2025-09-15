import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:fruit_hup/config/routes/app_routes.dart';
import 'package:fruit_hup/core/helper/extensions/navigations.dart';
import 'package:fruit_hup/core/services/shared_prefe_singleton.dart';
import 'package:fruit_hup/core/utils/app_colors.dart';
import 'package:fruit_hup/features/onBoarding/presentation/widgets/on_boardin_page_view.dart';

import '../../../../core/utils/constants.dart';
import '../../../../core/widgets/custom_button.dart';

class OnBoardingViewBody extends StatefulWidget {
  const OnBoardingViewBody({super.key});

  @override
  State<OnBoardingViewBody> createState() => _OnBoardingViewBodyState();
}

class _OnBoardingViewBodyState extends State<OnBoardingViewBody> {
  late PageController _pageController;
  var currentpage = 0;

  @override
  void initState() {
    _pageController = PageController();

    _pageController.addListener(() {
      currentpage = _pageController.page!.round();
      setState(() {});
    });

    super.initState();
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(child: OnBoardinPageView(pageController: _pageController)),
        DotsIndicator(
          dotsCount: 2,
          decorator: DotsDecorator(
            activeColor: AppColors.primaryColor,
            color: currentpage == 1
                ? AppColors.primaryColor
                : AppColors.primaryColor.withOpacity(.5),
          ),
        ),
        const SizedBox(height: 29),
        Visibility(
          visible: currentpage == 1 ? true : false,
          maintainSize: true,
          maintainState: true,
          maintainAnimation: true,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: KHorizontalPadding),
            child: CustomButton(
              onPressed: () {
                SharedPrefs.setBool(key: KisFirst, value: true);
                context.pushReplacementNamed(Routes.loginView);
              },
              text: 'ابدأ الان',
            ),
          ),
        ),
        const SizedBox(height: 43),
      ],
    );
  }
}
