import 'package:dartz/dartz.dart';
import 'package:logger/logger.dart';
import 'package:luna/core/states/data_state.dart';
import 'package:luna/core/states/failure.dart';
import 'package:luna/core/utils/enums.dart';
import 'package:luna/features/post/data/data_sources/post_data_source.dart';
import 'package:luna/features/post/domain/entities/post.dart';
import 'package:luna/features/post/domain/repositories/post_repository.dart';

class PostRepositoryImpl extends PostRepository{
  PostRepositoryImpl({
    required PostDataSource postDataSource
  }) : super(
      postDataSource: postDataSource
  );

  @override
  Future<Either<Failure, DataState<Post, PostError>>> getPost() async{
    // TODO: implement getPost
    try{
      Logger().i('Getting all posts from firebase');
      final dataState = await postDataSource.getPosts();
      return Right(dataState);
    }catch(e){
      Logger().e('Error getting posts from firebase: ${e.toString()}');
      return Left(Failure.firebase(message: e.toString()));
    }
  }
}