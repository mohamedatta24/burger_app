part of 'profiledata_cubit.dart';

@immutable
abstract class ProfiledataState {}

class ProfiledataInitial extends ProfiledataState {}

class ProfiledataLoading extends ProfiledataState {}

class ProfiledataSuccess extends ProfiledataState {
  final UserEntity userEntity;
  ProfiledataSuccess(this.userEntity);
}

class ProfiledataFailure extends ProfiledataState {
  final String errorMessage;
  ProfiledataFailure(this.errorMessage);
}
