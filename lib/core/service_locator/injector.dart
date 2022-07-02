import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:suitmedia_assessment/features/home/presentation/cubit/home_cubit.dart';
import 'package:suitmedia_assessment/features/user/data/datasource/network/user_network_datasource.dart';
import 'package:suitmedia_assessment/features/user/data/repositories/user_repository_impl.dart';
import 'package:suitmedia_assessment/features/user/domain/repositories/user_repository.dart';
import 'package:suitmedia_assessment/features/user/domain/usecases/get_all_user.dart';
import 'package:suitmedia_assessment/features/user/presentation/user_list/cubit/user_list_cubit.dart';

final GetIt getIt = GetIt.instance;

class InjectionContainer {
  static Future<void> init() async {
    _injectCore();
    _injectBloc();
    _injectUseCase();
    _injectRepo();
    _injectDataSource();
  }
}

void _injectCore() {
  getIt.registerFactory(() => Dio());
}

void _injectBloc() {
  getIt.registerFactory(() => HomeCubit());
  getIt.registerFactory(() => UserListCubit(getIt()));
}

void _injectUseCase() {
  getIt.registerFactory(() => GetAllUser(getIt()));
}

void _injectRepo() {
  getIt.registerFactory<UserRepository>(() => UserRepositoryImpl(getIt()));
}

void _injectDataSource() {
  getIt.registerFactory<UserNetworkDatasource>(
      () => UserNetworkDatasourceImpl(getIt()));
}
