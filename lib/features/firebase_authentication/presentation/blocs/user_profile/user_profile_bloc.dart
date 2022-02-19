import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:get_it/get_it.dart';
import 'package:luna/core/services/user_profile_service.dart';

import '../../../data/models/user_profile.dart';

part 'user_profile_event.dart';
part 'user_profile_state.dart';
part 'user_profile_bloc.freezed.dart';

class UserProfileBloc extends Bloc<UserProfileEvent, UserProfileState> {

  final _profileStream = GetIt.instance<UserProfileService>();

  UserProfileBloc() : super(UserProfileState.initial()) {
    on<_Started>(_onStarted);
  }

  FutureOr<void> _onStarted(_Started event, Emitter<UserProfileState> emit) {
    emit(UserProfileState.success(profileStream: _profileStream.userStream));
  }

  @override
  Future<void> close() {
    _profileStream.close();
    return super.close();
  }
}
