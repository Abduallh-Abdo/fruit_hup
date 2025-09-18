import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:fruit_hup/core/helper/extensions/media_query_values.dart';
import 'package:fruit_hup/core/utils/app_text_styles.dart';
import 'package:fruit_hup/features/home/presentation/widgets/featured_item_button.dart';

import '../../../../core/utils/assets_manager.dart';

class FeaturedItem extends StatelessWidget {
  const FeaturedItem({super.key});
  @override
  Widget build(BuildContext context) {
    final itemWidth = context.width;

    return SizedBox(
      width: itemWidth,

      child: AspectRatio(
        aspectRatio: 342 / 158,
        child: Stack(
          children: [
            Positioned(
              left: 0,
              right: itemWidth * 0.4,
              bottom: 0,
              top: 0,
              child: SvgPicture.asset(
                Assets.imagesPageViewItem2Image,
                fit: BoxFit.fill,
              ),
            ),
            Container(
              width: itemWidth * 0.5,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(4),
                  bottomRight: Radius.circular(4),
                ),
                image: DecorationImage(
                  image: AssetImage(Assets.imagesFeaturedItem),
                  fit: BoxFit.fill,
                ),
              ),

              child: Padding(
                padding: const EdgeInsets.only(right: 25),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      'عروض العيد',
                      style: AppTextStyles.regular13.copyWith(
                        color: Colors.white,
                      ),
                    ),
                    Text(
                      'خصم 25%',
                      style: AppTextStyles.bold19.copyWith(color: Colors.white),
                    ),
                    FeaturedItemButton(onPressed: () {}),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
