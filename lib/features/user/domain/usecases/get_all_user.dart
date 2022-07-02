import 'package:suitmedia_assessment/features/user/domain/repositories/user_repository.dart';

import '../../../../core/util/resource.dart';
import '../../../common/domain/entity/user.dart';

class GetAllUser {
  final UserRepository _userRepository;

  GetAllUser(this._userRepository);
  Future<Resource<List<User>>> execute() => _userRepository.getAllUser();
}
