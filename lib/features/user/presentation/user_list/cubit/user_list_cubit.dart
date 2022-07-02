import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:suitmedia_assessment/features/user/domain/usecases/get_all_user.dart';

import '../../../../common/domain/entity/user.dart';

part 'user_list_state.dart';

class UserListCubit extends Cubit<UserListState> {
  final GetAllUser _getAllUser;

  UserListCubit(this._getAllUser) : super(UserListState.loading());

  void getAllUser() async {
    emit(UserListState.loading());
    final result = await _getAllUser.execute();
    result.whenWithResult(success: (data) {
      emit(UserListState.success(data));
    }, error: (error) {
      emit(UserListState.error("Failed To get user data"));
    });
  }
}
