import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';
import 'package:suitmedia_assessment/features/common/domain/entity/user.dart';

part 'home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  HomeCubit() : super(const HomeInitial());

  void changeCurrentUser(User user) {
    emit(HomeState.userSelected(user));
  }
}
