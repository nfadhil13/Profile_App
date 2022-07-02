import 'package:suitmedia_assessment/features/common/domain/entity/user.dart';

import '../../../../core/util/resource.dart';

abstract class UserRepository {
  Future<Resource<List<User>>> getAllUser();
}
