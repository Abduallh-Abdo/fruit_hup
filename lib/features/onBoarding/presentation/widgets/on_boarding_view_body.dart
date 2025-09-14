import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:fruit_hup/core/utils/app_color.dart';
import 'package:fruit_hup/features/onBoarding/presentation/widgets/on_boardin_page_view.dart';

import '../../../../core/utils/constants.dart';
import '../../../../core/widgets/custom_button.dart';

class OnBoardingViewBody extends StatelessWidget {
  const OnBoardingViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(child: OnBoardinPageView()),
        DotsIndicator(
          dotsCount: 2,
          decorator: DotsDecorator(
            activeColor: AppColor.primaryColor,
            color: AppColor.primaryColor.withOpacity(.5),
          ),
        ),
        const SizedBox(height: 29),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: KHorizontalPadding),
          child: CustomButton(onPressed: () {}, text: 'ابدأ الان'),
        ),
        const SizedBox(height: 43),
      ],
    );
  }
}
