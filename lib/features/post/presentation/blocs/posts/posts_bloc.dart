import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:get_it/get_it.dart';
import 'package:luna/core/states/failure.dart';
import 'package:luna/features/post/domain/usecases/get_all_posts.dart';

part 'posts_event.dart';
part 'posts_state.dart';
part 'posts_bloc.freezed.dart';

class PostsBloc extends Bloc<PostsEvent, PostsState> {

  final _getAllPosts = GetIt.instance<GetAllPosts>();

  PostsBloc() : super(PostsState.initial()) {
    on<_Started>(_onStarted);
  }

  FutureOr<void> _onStarted(_Started event, Emitter<PostsState> emit) async{
    final failureOrAllPosts = await _getAllPosts();

    failureOrAllPosts.fold((failure){
     emit(PostsState.error(message: failure.message));
    }, (dataState){
      dataState.when(
          success: (data){
            Stream<QuerySnapshot> postsStream = data;
            emit(PostsState.success(postsStream: postsStream));
          },
          failed: (error){
            emit(PostsState.error(message: error));
          });
    });
  }
}
