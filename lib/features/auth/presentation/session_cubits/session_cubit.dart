

import 'package:burger_app/features/auth/domain/entities/user_entity.dart';
import 'package:burger_app/features/auth/domain/repositories/auth_repo.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'session_state.dart';

class SessionCubit extends Cubit<SessionState> {
  final AuthRepo authRepo;

  SessionCubit(this.authRepo) : super(SessionInitial());

  Future<void> checkSession() async {
    emit(SessionLoading());

    final result = await authRepo.autoLogin();

    result.fold(
      (error) => emit(SessionExpired()),
      (user) => emit(SessionActive(user)),
    );
  }
}