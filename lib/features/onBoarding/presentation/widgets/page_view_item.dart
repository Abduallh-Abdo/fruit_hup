import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:fruit_hup/config/routes/app_routes.dart';
import 'package:fruit_hup/core/helper/extensions/media_query_values.dart';
import 'package:fruit_hup/core/helper/extensions/navigations.dart';

import '../../../../core/services/shared_prefe_singleton.dart';
import '../../../../core/utils/app_text_styles.dart';
import '../../../../core/utils/constants.dart';

class PageViewItem extends StatelessWidget {
  const PageViewItem({
    super.key,
    required this.image,
    required this.backgroundImage,
    required this.title,
    required this.subTitle,
    required this.isVisible,
  });
  final String image, backgroundImage;
  final String subTitle;
  final Widget title;

  final bool isVisible;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          width: double.infinity,
          height: context.height * 0.5,
          child: Stack(
            children: [
              Positioned.fill(
                child: SvgPicture.asset(backgroundImage, fit: BoxFit.cover),
              ),
              Positioned(
                bottom: 0,
                left: 0,
                right: 0,
                child: SvgPicture.asset(image),
              ),
              Visibility(
                visible: isVisible,
                child: Padding(
                  padding: EdgeInsets.all(16.0),
                  child: GestureDetector(
                    onTap: () {
                      SharedPrefs.setBool(key: KisFirst, value: true);

                      context.pushReplacementNamed(Routes.loginView);
                    },
                    child: const Text('تخط', style: AppTextStyles.regular13),
                  ),
                ),
              ),
            ],
          ),
        ),
        const SizedBox(height: 64),
        title,
        const SizedBox(height: 24),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 37.0),
          child: Text(
            subTitle,
            textAlign: TextAlign.center,
            style: AppTextStyles.semiBold13.copyWith(
              color: const Color(0xff4e5556),
            ),
          ),
        ),
      ],
    );
  }
}
