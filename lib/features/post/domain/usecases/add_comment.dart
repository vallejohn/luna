import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:luna/core/states/data_state.dart';
import 'package:luna/core/states/failure.dart';
import 'package:luna/core/usecases/usecase_with_no_params.dart';
import 'package:luna/core/utils/enums.dart';
import 'package:luna/core/utils/params.dart';
import 'package:luna/features/post/domain/repositories/post_repository.dart';

import '../../../../core/usecases/usecase_with_params.dart';
import '../repositories/comment_repository.dart';

class AddComment implements UseCaseWithParams<void, AddCommentData>{
  final CommentRepository _commentRepository;
  AddComment(this._commentRepository);

  @override
  Future<Either<Failure, void>> call(AddCommentData addCommentData) {
    return _commentRepository.addComment(addCommentData);
  }
}