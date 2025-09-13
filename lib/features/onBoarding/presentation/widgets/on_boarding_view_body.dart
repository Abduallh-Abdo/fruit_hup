import 'package:flutter/material.dart';
import 'package:fruit_hup/features/onBoarding/presentation/widgets/on_boardin_page_view.dart';

class OnBoardingViewBody extends StatelessWidget {
  const OnBoardingViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(children: [Expanded(child: OnBoardinPageView())]);
  }
}
