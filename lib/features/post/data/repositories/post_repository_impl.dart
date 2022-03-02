import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:image_picker/image_picker.dart';
import 'package:logger/logger.dart';
import 'package:luna/core/states/data_state.dart';
import 'package:luna/core/states/failure.dart';
import 'package:luna/core/utils/enums.dart';
import 'package:luna/core/utils/errors.dart';
import 'package:luna/features/post/data/data_sources/post_data_source.dart';
import 'package:luna/features/post/domain/repositories/post_repository.dart';

class PostRepositoryImpl extends PostRepository{
  PostRepositoryImpl({
    required PostDataSource postDataSource
  }) : super(
      postDataSource: postDataSource
  );

  @override
  Future<Either<Failure, DataState<Stream<QuerySnapshot>, PostError>>> getAllPosts() async{
    // TODO: implement getPost
    try{
      Logger().i('Getting all posts from firebase');
      final dataState = await postDataSource.getAllPosts();
      return Right(dataState);
    }catch(e){
      Logger().e('Error getting posts from firebase: ${e.toString()}');
      //TODO: Should return a firebaseException instead of normal string message.
      return Left(Failure.firebase(message: e.toString()));
    }
  }

  @override
  Future<Either<Failure, DataState<PickedFile, NoError>>> uploadPostCoverImage() async{
    try{
      Logger().i('Browsing for cover image!');
      final dataState = await postDataSource.browsePostCoverImage();
      return Right(dataState);
    }catch(e){
      Logger().e('Error Uploading cover image: ${e.toString()}');
      return Left(Failure.generic(message: e.toString()));
    }
  }
}