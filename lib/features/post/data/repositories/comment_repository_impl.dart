import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:image_picker/image_picker.dart';
import 'package:logger/logger.dart';
import 'package:luna/core/states/data_state.dart';
import 'package:luna/core/states/failure.dart';
import 'package:luna/core/utils/params.dart';

import '../../domain/repositories/comment_repository.dart';
import '../data_sources/comment_data_source.dart';

class CommentRepositoryImpl extends CommentRepository{
  CommentRepositoryImpl({
    required CommentDataSource commentDataSource
  }) : super(
      commentDataSource: commentDataSource
  );

  @override
  Future<Either<Failure, DataState<PickedFile, Exception>>> browseCommentImage() {
    // TODO: implement browseCommentImage
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, Stream<QuerySnapshot<Object?>>>> getAllComments(String postID) async{
    try{
      Logger().i('Getting all comments from firebase');
      final comments = await commentDataSource.getAllComments(postID);
      return Right(comments);
    }catch(e){
      Logger().e('Error getting comments from firebase: ${e.toString()}');
      return Left(Failure.firebase(message: e.toString()));
    }
  }

  @override
  Future<Either<Failure, void>> addComment(AddCommentData addCommentData) async{

    if(addCommentData.comment.body!.isEmpty){
      return Left(Failure.generic(message: 'Comment is empty'));
    }

    try{
      Logger().i('Trying to add comment');
      return Right(await commentDataSource.addComment(addCommentData));
    }catch(e){
      Logger().e('Error adding comments to firebase: ${e.toString()}');
      return Left(Failure.firebase(message: e.toString()));
    }
  }
}