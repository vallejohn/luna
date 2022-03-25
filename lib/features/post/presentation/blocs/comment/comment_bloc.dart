import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:get_it/get_it.dart';
import 'package:logger/logger.dart';
import 'package:luna/core/utils/params.dart';

import '../../../../../core/utils/app_logger.dart';
import '../../../domain/usecases/add_comment.dart';
import '../../../domain/usecases/get_all_comments.dart';

part 'comment_event.dart';
part 'comment_state.dart';
part 'comment_bloc.freezed.dart';

class CommentBloc extends Bloc<CommentEvent, CommentState>{

  final _getAllComments = GetIt.instance<GetAllComments>();
  final _addComment = GetIt.instance<AddComment>();

  var log = AppLogger('CommentBloc');

  CommentBloc() : super(CommentState.initial()) {
    on<_Started>(_onStarted);
    on<_OnFetchPostComments>(_onFetchPostComments);
    on<_OnAdd>(_onAdd);
  }

  FutureOr<void> _onStarted(_Started event, Emitter<CommentState> emit){
  }

  FutureOr<void> _onFetchPostComments(_OnFetchPostComments event, Emitter<CommentState> emit) async{
    final failureOrAllComments = await _getAllComments(event.postID);

    failureOrAllComments.fold((failure){
      log.e('Failed to load comments: ${failure.message}');
      emit(CommentState.error());
    }, (data){
      log.i('Successfully fetched post');
      Stream<QuerySnapshot> commentsStream = data;
      emit(CommentState.success(commentsStream: commentsStream));
    });
  }

  FutureOr<void> _onAdd(_OnAdd event, Emitter<CommentState> emit) async{
    final failureOrAdd = await _addComment(event.addCommentData);

    failureOrAdd.fold((failure){
      log.e(failure.message);
    }, (_){

    });
  }
}
