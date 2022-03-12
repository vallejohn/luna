import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:luna/core/states/data_state.dart';
import 'package:luna/core/states/failure.dart';
import 'package:luna/core/utils/errors.dart';
import 'package:luna/core/utils/params.dart';
import 'package:luna/features/post/domain/repositories/post_repository.dart';

import '../../../../core/usecases/usecase_with_params.dart';

  class AddPost implements UseCaseWithParams<DataState<DocumentReference, FirebaseException>, AddPostData>{
  final PostRepository _postRepository;
  AddPost(this._postRepository);
  @override
  Future<Either<Failure, DataState<DocumentReference, FirebaseException>>> call(AddPostData addPostData) {
    return _postRepository.addPost(addPostData);
  }
}