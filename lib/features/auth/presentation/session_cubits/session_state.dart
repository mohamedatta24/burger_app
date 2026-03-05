part of 'session_cubit.dart';

@immutable
abstract class SessionState {}

class SessionInitial extends SessionState {}

class SessionLoading extends SessionState {}

class SessionActive extends SessionState {
  final UserEntity user;
  SessionActive(this.user);
}

class SessionExpired extends SessionState {}
