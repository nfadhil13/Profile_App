import 'package:dio/dio.dart';
import 'package:suitmedia_assessment/features/user/data/model/user_model.dart';

abstract class UserNetworkDatasource {
  Future<List<UserModel>> getAllUser();
}

class UserNetworkDatasourceImpl implements UserNetworkDatasource {
  final Dio _dio;

  UserNetworkDatasourceImpl(this._dio);

  @override
  Future<List<UserModel>> getAllUser() async {
    await Future.delayed(Duration(seconds: 2));
    final response =
        await _dio.get("https://reqres.in/api/users?page=1&amp;per_page=10");
    return (response.data["data"] as List)
        .map((e) => UserModel.fromJSON(e))
        .toList();
  }
}
