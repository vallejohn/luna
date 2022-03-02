import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:image_picker/image_picker.dart';

part 'create_post_event.dart';
part 'create_post_state.dart';
part 'create_post_bloc.freezed.dart';

class CreatePostBloc extends Bloc<CreatePostEvent, CreatePostState> {

  CreatePostBloc() : super(CreatePostState.initial()) {
    on<_Started>(_onStarted);
    on<_OnAddPost>(_onAddPost);
  }

  FutureOr<void> _onStarted(_Started event, Emitter<CreatePostState> emit) {

  }

  FutureOr<void> _onAddPost(_OnAddPost event, Emitter<CreatePostState> emit) {
    emit(CreatePostState.success());
  }
}
