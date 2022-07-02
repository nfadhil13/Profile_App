part of 'user_list_cubit.dart';

abstract class UserListState extends Equatable {
  const UserListState._();

  factory UserListState.loading() => const Loading();
  factory UserListState.error(String message) => Error(message);
  factory UserListState.success(List<User> userList) => Success(userList);

  T returnWhen<T>(
      {required T Function() onLoading,
      required T Function(Error) onError,
      required T Function(Success) onSuccess}) {
    final currentState = this;
    if (currentState is Loading) return onLoading();
    if (currentState is Error) return onError(currentState);
    if (currentState is Success) return onSuccess(currentState);
    throw Exception("Unknown subtpe of UserListState");
  }

  @override
  List<Object> get props => [];
}

class Loading extends UserListState {
  const Loading() : super._();
}

class Error extends UserListState {
  final String message;
  const Error(this.message) : super._();
  @override
  List<Object> get props => [message];
}

class Success extends UserListState {
  final List<User> userList;
  const Success(this.userList) : super._();

  @override
  List<Object> get props => [userList];
}
