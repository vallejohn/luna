import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:get_it/get_it.dart';
import 'package:image_picker/image_picker.dart';
import 'package:logger/logger.dart';
import '../../../domain/usecases/add_post_cover_image.dart';

part 'browse_image_event.dart';
part 'browse_image_state.dart';
part 'browse_image_bloc.freezed.dart';

class BrowseImageBloc extends Bloc<BrowseImageEvent, BrowseImageState> {
  final _uploadPostCoverImage = GetIt.instance<AddPostCoverImage>();


  BrowseImageBloc() : super(BrowseImageState.initial()) {
    on<_Started>((event, emit) {});
    on<_OnBrowse>(_onBrowse);
    on<_OnCancel>(_onCancel);
  }

  FutureOr<void> _onBrowse(_OnBrowse event, Emitter<BrowseImageState> emit) async{
    final failureOrCoverImage = await _uploadPostCoverImage();

    failureOrCoverImage.fold((failure){
      Logger().e(failure.message);
      emit(BrowseImageState.error());
    }, (dataState){
      dataState.whenOrNull(success: (data){
        PickedFile? _image = data;
        Logger().i(_image!.path.toString());
        emit(BrowseImageState.success(image: _image));
      });
    });
  }

  FutureOr<void> _onCancel(_OnCancel event, Emitter<BrowseImageState> emit) {
    emit(BrowseImageState.cancelled());
  }
}
