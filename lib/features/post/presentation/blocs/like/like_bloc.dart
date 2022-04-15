import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:get_it/get_it.dart';
import 'package:luna/features/post/data/models/like.dart';
import 'package:luna/features/post/domain/usecases/add_like.dart';

import '../../../../../core/utils/app_logger.dart';
import '../../../../../core/utils/params.dart';

part 'like_event.dart';
part 'like_state.dart';
part 'like_bloc.freezed.dart';

class LikeBloc extends Bloc<LikeEvent, LikeState> {

  final _addLike = GetIt.instance<AddLike>();

  var log = AppLogger('LikeBloc');

  LikeBloc() : super(LikeState.initial()) {
    on<_Started>(_onStarted);
    on<_OnAdd>(_onAdd);
  }

  FutureOr<void> _onStarted(_Started event, Emitter<LikeState> emit) {
  }

  FutureOr<void> _onAdd(_OnAdd event, Emitter<LikeState> emit) async{
    final failureOrAdd = await _addLike(event.addLikeData);

    failureOrAdd.fold((failure){
      log.e(failure.message);
    }, (liked){
      emit(LikeState.liked(isLiked: liked));
    });
  }
}
