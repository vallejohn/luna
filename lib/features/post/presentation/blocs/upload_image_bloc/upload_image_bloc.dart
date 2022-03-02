import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:get_it/get_it.dart';
import 'package:image_picker/image_picker.dart';
import 'package:logger/logger.dart';
import '../../../domain/usecases/add_post_cover_image.dart';

part 'upload_image_event.dart';
part 'upload_image_state.dart';
part 'upload_image_bloc.freezed.dart';

class UploadImageBloc extends Bloc<UploadImageEvent, UploadImageState> {
  final _uploadPostCoverImage = GetIt.instance<AddPostCoverImage>();


  UploadImageBloc() : super(UploadImageState.initial()) {
    on<_Started>((event, emit) {});
    on<_OnUpload>(_onUpload);
    on<_OnCancel>(_onCancel);
  }

  FutureOr<void> _onUpload(_OnUpload event, Emitter<UploadImageState> emit) async{
    final failureOrCoverImage = await _uploadPostCoverImage();

    failureOrCoverImage.fold((failure){
      Logger().e(failure.message);
      emit(UploadImageState.error());
    }, (dataState){
      dataState.whenOrNull(success: (data){
        PickedFile? _image = data;
        Logger().i(_image!.path.toString());
        emit(UploadImageState.success(image: _image));
      });
    });
  }

  FutureOr<void> _onCancel(_OnCancel event, Emitter<UploadImageState> emit) {
    emit(UploadImageState.cancelled());
  }
}
