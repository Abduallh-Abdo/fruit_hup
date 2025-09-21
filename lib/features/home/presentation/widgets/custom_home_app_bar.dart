import 'package:flutter/material.dart';
import 'package:fruit_hup/core/helper/functions/get_user.dart';
import 'package:fruit_hup/core/utils/app_colors.dart';
import 'package:fruit_hup/core/utils/app_text_styles.dart';
import 'package:fruit_hup/core/utils/assets_manager.dart';

import '../../../../core/widgets/notification_button.dart';

class CustomHomeAppBar extends StatelessWidget {
  const CustomHomeAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Image.asset(Assets.imagesProfileImage),
      title: Text(
        'صباح الخير !..',
        style: AppTextStyles.regular16.copyWith(color: AppColors.hintTextColor),
      ),
      subtitle: Text(getUser().name, style: AppTextStyles.bold16),
      trailing: const NotificationButton(),
    );
  }
}
