import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:suitmedia_assessment/core/base_widgets/base_appbar.dart';
import 'package:suitmedia_assessment/core/base_widgets/base_web_view.dart';
import 'package:suitmedia_assessment/core/base_widgets/flexible_singlechildscrollview.dart';
import 'package:suitmedia_assessment/core/ext/ctx_ext.dart';
import 'package:suitmedia_assessment/core/theme/color_theme.dart';
import 'package:suitmedia_assessment/features/home/presentation/cubit/home_cubit.dart';
import 'package:suitmedia_assessment/features/user/presentation/user_list/user_list_screen.dart';

import '../../../core/base_widgets/buttons/primary_button.dart';
import '../../../core/service_locator/injector.dart';
import '../../common/domain/entity/user.dart';

part 'widgets/welcome_text.dart';
part 'widgets/profile_section.dart';

class HomeScreen extends StatelessWidget {
  static const routeName = "/home";
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final name = context.navigationArgs as String;
    return BlocProvider(
      create: (context) => getIt<HomeCubit>(),
      child: Scaffold(
        backgroundColor: ColorTheme.surface,
        appBar: BaseAppBar(context, title: "Home"),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 13),
          child: FlexibleSingleChildScrollView(
            child: Column(
              children: [
                _WelcomeText(name: name),
                const _ProfileSection(),
                Builder(builder: (innerCtx) {
                  final cubit = innerCtx.read<HomeCubit>();
                  return Padding(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 10, vertical: 13),
                    child: PrimaryButton(
                        text: "Choose a user",
                        onPressed: () async {
                          final result = await context.navigator
                              .pushNamed(UserListScreen.routeName);
                          if (result is User) {
                            cubit.changeCurrentUser(result);
                          }
                        }),
                  );
                })
              ],
            ),
          ),
        ),
      ),
    );
  }
}
