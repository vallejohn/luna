import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:get_it/get_it.dart';
import 'package:image_picker/image_picker.dart';
import 'package:luna/core/utils/params.dart';
import 'package:luna/features/post/domain/usecases/add_post.dart';

part 'create_post_event.dart';
part 'create_post_state.dart';
part 'create_post_bloc.freezed.dart';

class CreatePostBloc extends Bloc<CreatePostEvent, CreatePostState> {

  final _addPost = GetIt.instance<AddPost>();

  CreatePostBloc() : super(CreatePostState.initial()) {
    on<_Started>(_onStarted);
    on<_OnAddPost>(_onAddPost);
  }

  FutureOr<void> _onStarted(_Started event, Emitter<CreatePostState> emit) {

  }

  FutureOr<void> _onAddPost(_OnAddPost event, Emitter<CreatePostState> emit) async{
    emit(CreatePostState.uploading());

    final failureOrSuccess = await _addPost(event.addPostData);

    emit(CreatePostState.success());
  }
}
