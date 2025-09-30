import 'package:flutter/material.dart';
import 'package:fruit_hup/core/helper/extensions/navigations.dart';

import '../utils/app_text_styles.dart';
import '../utils/constants.dart';
import 'notification_button.dart';

AppBar buildAppBar({
  required String title,
  required BuildContext context,
  bool showBackButton = true,
  bool showNotificationButton = true,
}) {
  return AppBar(
    backgroundColor: Colors.white,
    centerTitle: true,
    leading: Visibility(
      visible: showBackButton,
      child: IconButton(
        onPressed: () {
          context.pop();
        },
        icon: const Icon(Icons.arrow_back_ios),
      ),
    ),
    actions: [
      Visibility(
        visible: showNotificationButton,
        child: const Padding(
          padding: EdgeInsets.symmetric(horizontal: KHorizontalPadding),
          child: NotificationButton(),
        ),
      ),
    ],
    title: Text(title, style: AppTextStyles.bold19),
  );
}
