import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
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

    await failureOrDataState.fold((failure) async{
      Logger().e(failure.message.toString());
    }, (dataState) async{
      await dataState.when(
          success: (imagePath) async{
            Logger().i('Image upload success: ${imagePath.toString()}');

            final dataState = await _addPost(AddPostData(
              user: event.addPostData.user,
              content: event.addPostData.content,
              title: event.addPostData.title,
              imagePath: imagePath
            ));

            await dataState.fold((failure) async{
              Logger().e('Failure to upload post: ${failure.message}');
            }, (dataState) async{
              await dataState.when(
                  success: (data) async{
                    DocumentReference reference = data;
                    Logger().i('Successfully added post: ${reference.id}');
                    emit(CreatePostState.success(postSnapshot: reference.snapshots()));
                  },
                  failed: (error) async{
                    Logger().w('Error while adding post');
                  });
            });
          }, failed: (error) async{
            Logger().w('Error uploading image: $error');
      });
    });
  }
}
