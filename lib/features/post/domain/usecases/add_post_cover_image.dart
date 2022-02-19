import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:image_picker/image_picker.dart';
import 'package:luna/core/states/data_state.dart';
import 'package:luna/core/states/failure.dart';
import 'package:luna/core/usecases/usecase_with_no_params.dart';
import 'package:luna/core/usecases/usecase_with_params.dart';
import 'package:luna/core/utils/enums.dart';
import 'package:luna/features/post/domain/repositories/post_repository.dart';

  class AddPostCoverImage implements UseCaseWithNoParams<DataState<PickedFile, String>>{
  final PostRepository _postRepository;
  AddPostCoverImage(this._postRepository);
  @override
  Future<Either<Failure, DataState<PickedFile, String>>> call() {
    return _postRepository.uploadPostCoverImage();
  }
}