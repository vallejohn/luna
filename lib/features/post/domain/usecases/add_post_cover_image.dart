import 'package:dartz/dartz.dart';
import 'package:image_picker/image_picker.dart';
import 'package:luna/core/states/data_state.dart';
import 'package:luna/core/states/failure.dart';
import 'package:luna/core/usecases/usecase_with_no_params.dart';
import 'package:luna/core/utils/errors.dart';
import 'package:luna/features/post/domain/repositories/post_repository.dart';

  class AddPostCoverImage implements UseCaseWithNoParams<DataState<PickedFile, NoError>>{
  final PostRepository _postRepository;
  AddPostCoverImage(this._postRepository);
  @override
  Future<Either<Failure, DataState<PickedFile, NoError>>> call() {
    return _postRepository.uploadPostCoverImage();
  }
}