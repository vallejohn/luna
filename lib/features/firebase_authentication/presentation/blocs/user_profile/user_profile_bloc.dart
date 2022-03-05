import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../../core/utils/params.dart';

part 'user_profile_event.dart';
part 'user_profile_state.dart';
part 'user_profile_bloc.freezed.dart';

class UserProfileBloc extends Bloc<UserProfileEvent, UserProfileState> {

  UserProfileBloc() : super(UserProfileState.initial()) {
    on<_Started>(_onStarted);
    on<_UserUpdate>(_onUserUpdate);
  }

  FutureOr<void> _onStarted(_Started event, Emitter<UserProfileState> emit) {}

  FutureOr<void> _onUserUpdate(_UserUpdate event, Emitter<UserProfileState> emit) {
    emit(UserProfileState.withData(param: event.param));
  }
}
