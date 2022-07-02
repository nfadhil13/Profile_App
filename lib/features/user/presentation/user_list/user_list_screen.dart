import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:suitmedia_assessment/core/base_widgets/base_appbar.dart';
import 'package:suitmedia_assessment/core/base_widgets/buttons/primary_button.dart';
import 'package:suitmedia_assessment/core/base_widgets/loading_text.dart';
import 'package:suitmedia_assessment/core/ext/ctx_ext.dart';
import 'package:suitmedia_assessment/core/theme/color_theme.dart';
import 'package:suitmedia_assessment/features/user/presentation/user_list/cubit/user_list_cubit.dart';

import '../../../../core/service_locator/injector.dart';
import '../../../common/domain/entity/user.dart';

part 'widgets/error.dart';
part 'widgets/list.dart';
part 'widgets/loading.dart';

class UserListScreen extends StatelessWidget {
  static const routeName = "/user-list";
  const UserListScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<UserListCubit>()
        ..getAllUser(),
      child: Scaffold(
        appBar: BaseAppBar(context, title: "Users"),
        body: BlocBuilder<UserListCubit, UserListState>(
          builder: (context, state) {
            return state.returnWhen(
                onLoading: () => const _Loading(),
                onError: (state) => _Error(
                      errorMessage: state.message,
                    ),
                onSuccess: (state) => _UserList(
                      userList: state.userList,
                    ));
          },
        ),
      ),
    );
  }
}
