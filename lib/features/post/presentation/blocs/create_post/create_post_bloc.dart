import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:get_it/get_it.dart';
import 'package:logger/logger.dart';
import 'package:luna/core/utils/params.dart';
import 'package:luna/features/post/domain/usecases/add_post.dart';

import '../../../../../core/utils/app_logger.dart';

part 'create_post_event.dart';
part 'create_post_state.dart';
part 'create_post_bloc.freezed.dart';

class CreatePostBloc extends Bloc<CreatePostEvent, CreatePostState> {

  final _addPost = GetIt.instance<AddPost>();

  var log = AppLogger('CreatePostBloc');

  CreatePostBloc() : super(CreatePostState.initial()) {
    on<_Started>(_onStarted);
    on<_OnAddPost>(_onAddPost);
  }

  FutureOr<void> _onStarted(_Started event, Emitter<CreatePostState> emit) {

  }

  FutureOr<void> _onAddPost(_OnAddPost event, Emitter<CreatePostState> emit) async{
    emit(CreatePostState.loading());

    final dataState = await _addPost(AddPostData(
        user: event.addPostData.user,
        content: event.addPostData.content,
        title: event.addPostData.title,
        imagePath: event.addPostData.imagePath
    ));

    await dataState.fold((failure) async{
      log.e('Failure to upload post: ${failure.message}');
      emit(CreatePostState.error());
    }, (dataState) async{
      await dataState.when(
          success: (data) async{
            DocumentReference reference = data;
            log.i('Successfully added post: ${reference.id}');
            emit(CreatePostState.success(postSnapshot: reference.snapshots()));
          },
          failed: (error) async{
            log.w('Error while adding post: ${error.toString()}');
            emit(CreatePostState.error());
          });
    });
  }
}
