import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:fruit_hup/core/utils/app_color.dart';
import 'package:fruit_hup/features/onBoarding/presentation/widgets/on_boardin_page_view.dart';

class OnBoardingViewBody extends StatelessWidget {
  const OnBoardingViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(child: OnBoardinPageView()),
        DotsIndicator(dotsCount: 2, decorator: DotsDecorator(
          activeColor: AppColor.primaryColor,
        color: AppColor.primaryColor.withOpacity(.5),
        )),
      ],
    );
  }
}
