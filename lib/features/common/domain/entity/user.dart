import 'package:equatable/equatable.dart';

class User extends Equatable {
  final String id;
  final String name;
  final String profileURL;
  final String email;

  const User(
      {required this.name, required this.profileURL, required this.email, required this.id})
      : super();

  @override
  List<Object?> get props => [name, profileURL, email];
}
