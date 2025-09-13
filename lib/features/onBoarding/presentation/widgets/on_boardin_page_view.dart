import 'package:flutter/material.dart';
import 'package:fruit_hup/core/utils/assets_manager.dart';
import 'package:fruit_hup/features/onBoarding/presentation/widgets/page_view_item.dart';

class OnBoardinPageView extends StatelessWidget {
  const OnBoardinPageView({super.key});

  @override
  Widget build(BuildContext context) {
    return PageView(
      children: const [
        PageViewItem(
          backgroundImage: Assets.imagesPageViewItem1BackgroundImage,
          image: Assets.imagesPageViewItem1Image,
          subTitle:
              "اكتشف تجربة تسوق فريدة مع FruitHUB. استكشف مجموعتنا الواسعة من الفواكه الطازجة الممتازة واحصل على أفضل العروض والجودة العالية.",
          title: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [Text('مرحبًا بك في '), Text('Fruit'), Text('HUB')],
          ),
        ),
        PageViewItem(
          backgroundImage: Assets.imagesPageViewItem2BackgroundImage,
          image: Assets.imagesPageViewItem2Image,
          subTitle:
              "نقدم لك أفضل الفواكه المختارة بعناية. اطلع على التفاصيل والصور والتقييمات لتتأكد من اختيار الفاكهة المثالية",
          title: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [Text('ابحث وتسوق')],
          ),
        ),
      ],
    );
  }
}
