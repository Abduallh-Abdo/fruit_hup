
  import 'package:flutter/material.dart';
import 'package:fruit_hup/core/helper/extensions/navigations.dart';

import '../utils/app_text_styles.dart';

AppBar CutomAppBar({required String title, required BuildContext context}) {
    return AppBar(
      leading: IconButton(
        onPressed: () {
          context.pop();
        },
        icon: const Icon(Icons.arrow_back_ios),
      ),
      title: Text(
        title,
        style: AppTextStyles.bold19,
        textAlign: TextAlign.center,
      ),
    );
  }
