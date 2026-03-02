part of 'getprofiledata_cubit.dart';

@immutable
abstract class GetprofiledataState {}

class GetprofiledataInitial extends GetprofiledataState {}

class GetprofiledataLoading extends GetprofiledataState {}

class GetprofiledataSuccess extends GetprofiledataState {
  final UserEntity userEntity;
  GetprofiledataSuccess(this.userEntity);
}

class GetprofiledataFailure extends GetprofiledataState {
  final String errorMessage;
  GetprofiledataFailure(this.errorMessage);
}
