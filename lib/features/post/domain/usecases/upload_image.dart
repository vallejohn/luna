import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:luna/core/states/data_state.dart';
import 'package:luna/core/states/failure.dart';
import 'package:luna/core/utils/params.dart';
import 'package:luna/features/post/domain/repositories/image_upload_repository.dart';

import '../../../../core/usecases/usecase_with_params.dart';

  class UploadImage implements UseCaseWithParams<DataState<String, FirebaseException>, ImageUploadParam>{
  final ImageUploadRepository _imageUploadRepository;
  UploadImage(this._imageUploadRepository);
  @override
  Future<Either<Failure, DataState<String, FirebaseException>>> call(ImageUploadParam param) {
    return _imageUploadRepository.uploadImage(param);
  }
}