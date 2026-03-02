import 'package:burger_app/features/auth/domain/entities/user_entity.dart';
import 'package:burger_app/features/auth/domain/repositories/auth_repo.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
part 'getprofiledata_state.dart';

class GetprofiledataCubit extends Cubit<GetprofiledataState> {
  GetprofiledataCubit(this.authRepo) : super(GetprofiledataInitial());

  final AuthRepo authRepo;

  Future<void> getProfileData() async {
    emit(GetprofiledataLoading());
    final response = await authRepo.getProfileData();
    response.fold(
      (failure) => emit(GetprofiledataFailure(failure.message)),
      (userEntity) => emit(GetprofiledataSuccess(userEntity)),
    );
  }
}
