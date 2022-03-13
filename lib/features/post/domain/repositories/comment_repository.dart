import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:image_picker/image_picker.dart';
import 'package:luna/core/states/data_state.dart';
import 'package:luna/core/states/failure.dart';
import 'package:luna/core/utils/params.dart';
import '../../data/data_sources/comment_data_source.dart';

abstract class CommentRepository{
  final CommentDataSource commentDataSource;
  CommentRepository({required this.commentDataSource});

  Future<Either<Failure, Stream<QuerySnapshot>>> getAllComments(String postID);
  Future<Either<Failure, DataState<PickedFile, Exception>>> browseCommentImage();
  Future<Either<Failure, void>> addComment(AddCommentData addCommentData);
}