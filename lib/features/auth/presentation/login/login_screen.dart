import 'package:flutter/material.dart';
import 'package:suitmedia_assessment/core/base_widgets/buttons/primary_button.dart';
import 'package:suitmedia_assessment/core/base_widgets/form/base_text_field.dart';
import 'package:suitmedia_assessment/core/ext/ctx_ext.dart';
import 'package:suitmedia_assessment/core/ext/string_ext.dart';
import 'package:suitmedia_assessment/core/theme/color_theme.dart';
import 'package:suitmedia_assessment/features/home/presentation/home_screen.dart';

part 'widgets/form.dart';
part 'widgets/user_icon.dart';
part 'widgets/palindrome_dialog.dart';

class LoginScreen extends StatelessWidget {
  static const routeName = "/login";
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/background.png"), fit: BoxFit.cover)),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              _UserIcon(),
              SizedBox(height: 50),
              _Form(),
            ],
          ),
        ),
      ),
    );
  }
}
