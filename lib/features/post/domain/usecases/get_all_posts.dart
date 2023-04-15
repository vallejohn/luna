import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:luna/core/states/failure.dart';
import 'package:luna/core/usecases/usecase_with_no_params.dart';
import 'package:luna/features/post/domain/repositories/post_repository.dart';

class GetAllPosts implements UseCaseWithNoParams<Stream<QuerySnapshot>>{
  final PostRepository _postRepository;
  GetAllPosts(this._postRepository);
  @override
  Future<Either<Failure, Stream<QuerySnapshot>>> call() {
    return _postRepository.getAllPosts();
  }
}