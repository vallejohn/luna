import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:luna/app/app.locator.dart';
import 'package:luna/features/post/data/models/post.dart';
import 'package:luna/features/firebase_authentication/data/models/user_profile.dart';
import 'package:luna/services/post_service.dart';
import 'package:luna/services/user_profile_service.dart';

part 'post_event.dart';
part 'post_state.dart';
part 'post_bloc.freezed.dart';

class PostBloc extends Bloc<PostEvent, PostState> {
  final _currentUser;

  PostBloc({required UserProfileService userProfileService})
      : _currentUser = userProfileService.currentUser,
        super(_Initial(currentUser: userProfileService.currentUser)) {
    on<_Started>(_onStarted);
  }

  void _onStarted(_Started event, Emitter<PostState> emit) {

  }
}
