import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:luna/core/states/data_state.dart';
import 'package:luna/core/states/failure.dart';
import 'package:luna/core/usecases/usecase_with_no_params.dart';
import 'package:luna/core/utils/enums.dart';
import 'package:luna/features/post/domain/repositories/post_repository.dart';

import '../../../../core/usecases/usecase_with_params.dart';
import '../repositories/comment_repository.dart';

class GetAllComments implements UseCaseWithParams<Stream<QuerySnapshot>, String>{
  final CommentRepository _commentRepository;
  GetAllComments(this._commentRepository);

  @override
  Future<Either<Failure, Stream<QuerySnapshot>>> call(String postID) {
    return _commentRepository.getAllComments(postID);
  }
}