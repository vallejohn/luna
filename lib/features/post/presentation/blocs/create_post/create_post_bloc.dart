import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:get_it/get_it.dart';
import 'package:logger/logger.dart';
import 'package:luna/core/utils/params.dart';
import 'package:luna/features/post/domain/usecases/add_post.dart';
import 'package:luna/features/post/domain/usecases/upload_image.dart';

part 'create_post_event.dart';
part 'create_post_state.dart';
part 'create_post_bloc.freezed.dart';

class CreatePostBloc extends Bloc<CreatePostEvent, CreatePostState> {

  final _uploadImage = GetIt.instance<UploadImage>();
  final _addPost = GetIt.instance<AddPost>();

  CreatePostBloc() : super(CreatePostState.initial()) {
    on<_Started>(_onStarted);
    on<_OnAddPost>(_onAddPost);
  }

  FutureOr<void> _onStarted(_Started event, Emitter<CreatePostState> emit) {

  }

  FutureOr<void> _onAddPost(_OnAddPost event, Emitter<CreatePostState> emit) async{
    emit(CreatePostState.loading());

    final failureOrDataState = await _uploadImage(ImageUploadParam(
      userID: event.addPostData.user!.authID!,
      imagePath: event.addPostData.imagePath!
    ));

    failureOrDataState.fold((failure) {
      Logger().e(failure.message.toString());
    }, (dataState) {
      dataState.when(
          success: (imagePath) async{
            Logger().i('Image upload success: ${imagePath.toString()}');

            final dataState = await _addPost(AddPostData(
              user: event.addPostData.user,
              content: event.addPostData.content,
              title: event.addPostData.title,
              imagePath: imagePath
            ));

            dataState.fold((failure){
              Logger().e('Failure to upload post: ${failure.message}');
            }, (dataState){
              dataState.when(
                  success: (data){
                    Logger().i('Successfully added post');
                    emit(CreatePostState.success());
                  },
                  failed: (error){
                    Logger().w('Error while adding post');
                  });
            });
          }, failed: (error){
            Logger().w('Error uploading image: $error');
      });
    });
  }
}
