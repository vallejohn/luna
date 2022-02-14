import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:get_it/get_it.dart';
import 'package:logger/logger.dart';
import 'package:luna/features/firebase_authentication/domain/usecases/get_active_user.dart';

import '../../../../../core/services/user_profile_service.dart';

part 'auth_check_event.dart';
part 'auth_check_state.dart';
part 'auth_check_bloc.freezed.dart';

class AuthCheckBloc extends Bloc<AuthCheckEvent, AuthCheckState> {
  final _getActiveUser = GetIt.instance<GetActiveUser>();
  final _userProfile = GetIt.instance<UserProfileService>();

  AuthCheckBloc() : super(AuthCheckState.loading()) {
    on<_Started>(_onStarted);
  }

  FutureOr<void> _onStarted(_Started event, Emitter<AuthCheckState> emit) async {
    final failureOrAuthState = await _getActiveUser();

    failureOrAuthState.fold((failure) {
      emit(AuthCheckState.error(message: failure.message));
      Logger().e('AuthCheck failure: ${failure.message}');
    }, (authState) {
      authState.when(
          authenticated: (user) {
            _userProfile.setUser(user);
            emit(AuthCheckState.authenticated());
            Logger().i('Authenticated: ${user.toString()}');
          },
          unAuthenticated: () {
            emit(AuthCheckState.unAuthenticated());
            Logger().w('Unauthenticated');
          });
    });
  }
}
