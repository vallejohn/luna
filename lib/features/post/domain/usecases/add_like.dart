import 'package:dartz/dartz.dart';
import 'package:luna/core/states/failure.dart';
import 'package:luna/core/utils/params.dart';

import '../../../../core/usecases/usecase_with_params.dart';
import '../repositories/like_repository.dart';

class AddLike implements UseCaseWithParams<bool, AddLikeData>{
  final LikeRepository _likeRepository;
  AddLike(this._likeRepository);

  @override
  Future<Either<Failure, bool>> call(AddLikeData addLikeData) {
    return _likeRepository.addLike(addLikeData);
  }
}