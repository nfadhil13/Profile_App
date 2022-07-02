import 'package:flutter/material.dart';
import 'package:suitmedia_assessment/core/ext/ctx_ext.dart';

import '../theme/color_theme.dart';

class BaseAppBar extends AppBar {
  BaseAppBar(BuildContext context , {Key? key, required String title})
      : super(
          key: key,
          backgroundColor: ColorTheme.surface,
          elevation: 0.5,
          shadowColor: const Color(0xFFE2E3E4),
          centerTitle: true,
          leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(
              Icons.arrow_back_ios,
              color: ColorTheme.primary,
              size: 16,
            ),
          ),
          title: Text(
            title,
            style: context.textTheme.displaySmall
                ?.copyWith(color: ColorTheme.primary),
          ),
        );
}
