
  import 'package:flutter/material.dart';
import 'package:fruit_hup/core/helper/extensions/navigations.dart';

import '../../../../core/utils/app_text_styles.dart';
import '../../../../core/utils/constants.dart';
import '../../../../core/widgets/notification_button.dart';

AppBar buildBsetSellingAppBar(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.white,
      centerTitle: true,
      leading: IconButton(
        onPressed: () {
          context.pop();
        },
        icon: const Icon(Icons.arrow_back_ios),
      ),
      actions: const [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: KHorizontalPadding),
          child: NotificationButton(),
        ),
      ],
      title: const Text('الاكثر مبيعاً', style: AppTextStyles.bold19),
    );
  }

