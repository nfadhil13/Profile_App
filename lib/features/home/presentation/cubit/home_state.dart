part of 'home_cubit.dart';

@immutable
abstract class HomeState extends Equatable {
  const HomeState._();

  factory HomeState.initial() => const HomeInitial();
  factory HomeState.userSelected(User user) => HomeUserSelected(user);

  T returnWhen<T>(
      {required T Function(HomeInitial) onInitial,
      required T Function(HomeUserSelected) onUserSelected}) {
    final currentState = this;
    if (currentState is HomeInitial) return onInitial(currentState);
    if (currentState is HomeUserSelected) return onUserSelected(currentState);
    throw Exception("Unknown subtype of HomeState");
  }

  void doWhen(
      {Function(HomeInitial)? onInitial,
      Function(HomeUserSelected)? onUserSelected}) {
    final currentState = this;
    if (currentState is HomeInitial) {
      onInitial?.call(currentState);
      return;
    }
    if (currentState is HomeUserSelected) {
      onUserSelected?.call(currentState);
      return;
    }
  }

  @override
  List<Object?> get props => [];
}

class HomeInitial extends HomeState {
  const HomeInitial() : super._();
}

class HomeUserSelected extends HomeState {
  final User user;
  const HomeUserSelected(this.user) : super._();

  @override
  List<Object?> get props => [user];
}
