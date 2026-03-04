import 'package:burger_app/features/auth/domain/entities/user_entity.dart';
import 'package:burger_app/features/auth/domain/repositories/auth_repo.dart';
import 'package:burger_app/features/auth/presentation/views/login_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
part 'profiledata_state.dart';

class ProfiledataCubit extends Cubit<ProfiledataState> {
  ProfiledataCubit(this.authRepo) : super(ProfiledataInitial());

  final AuthRepo authRepo;

  Future<void> getProfileData() async {
    emit(ProfiledataLoading());
    final response = await authRepo.getProfileData();
    response.fold(
      (failure) => emit(ProfiledataFailure(failure.message)),
      (userEntity) => emit(ProfiledataSuccess(userEntity)),
    );
  }

  Future<void> updateProfileData({
    required String name,
    required String email,
    required String address,
    required String imagePath,
    required String visa,
  }) async {
    emit(ProfiledataLoading());
    final response = await authRepo.updateProfileData(
      name: name,
      email: email,
      address: address,
      imagePath: imagePath,
      visa: visa,
    );
    response.fold(
      (failure) => emit(ProfiledataFailure(failure.message)),
      (userEntity) => emit(ProfiledataSuccess(userEntity)),
    );
  }

  Future<void> logout(BuildContext context) async {
    emit(ProfiledataLoading());
    final response = await authRepo.logout();
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(
        builder: (context) {
          return LoginView();
        },
      ),
    );
    return response;
  }
}
