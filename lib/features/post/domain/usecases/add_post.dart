import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:luna/core/states/data_state.dart';
import 'package:luna/core/states/failure.dart';
import 'package:luna/core/usecases/usecase_with_no_params.dart';
import 'package:luna/core/utils/errors.dart';
import 'package:luna/features/post/domain/repositories/post_repository.dart';

  class AddPost implements UseCaseWithNoParams<DataState<DocumentReference, NoError>>{
  final PostRepository _postRepository;
  AddPost(this._postRepository);
  @override
  Future<Either<Failure, DataState<DocumentReference, NoError>>> call() {
    throw UnimplementedError();
  }
}