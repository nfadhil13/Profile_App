
import '../../../common/domain/entity/user.dart';

class UserModel extends User {
  const UserModel(
      {required super.name,
      required super.profileURL,
      required super.email,
      required super.id});

  factory UserModel.fromJSON(Map<String, dynamic> json) {
    final firstName = json["first_name"];
    final lastName = json["last_name"];
    return UserModel(
        name: "$firstName $lastName",
        profileURL: json["avatar"],
        email: json["email"],
        id: json["id"].toString());
  }
}
