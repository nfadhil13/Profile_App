import 'package:suitmedia_assessment/core/util/base_repo.dart';
import 'package:suitmedia_assessment/features/common/domain/entity/user.dart';
import 'package:suitmedia_assessment/core/util/resource.dart';
import 'package:suitmedia_assessment/features/user/data/datasource/network/user_network_datasource.dart';

import '../../domain/repositories/user_repository.dart';

class UserRepositoryImpl extends BaseRepository implements UserRepository {
  final UserNetworkDatasource _networkDatasource;

  UserRepositoryImpl(this._networkDatasource);
  @override
  Future<Resource<List<User>>> getAllUser() =>
      networkOnlyCall(networkCall: () async {
        return Resource.success(data: await _networkDatasource.getAllUser());
      });
}
