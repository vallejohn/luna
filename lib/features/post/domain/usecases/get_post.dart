import 'package:dartz/dartz.dart';
import 'package:luna/core/states/data_state.dart';
import 'package:luna/core/states/failure.dart';
import 'package:luna/core/usecases/usecase_with_no_params.dart';
import 'package:luna/core/utils/enums.dart';
import 'package:luna/features/post/domain/entities/post.dart';
import 'package:luna/features/post/domain/repositories/post_repository.dart';

class GetPosts implements UseCaseWithNoParams<DataState<Post, PostError>>{
  final PostRepository _postRepository;
  GetPosts(this._postRepository);
  @override
  Future<Either<Failure, DataState<Post, PostError>>> call() {
    return _postRepository.getPost();
  }
}