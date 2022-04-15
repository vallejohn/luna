import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';

import '../../../../core/states/failure.dart';
import '../../../../core/utils/params.dart';
import '../../data/data_sources/like_data_source.dart';

abstract class LikeRepository{
  final LikeDataSource likeDataSource;
  LikeRepository({required this.likeDataSource});

  Future<Either<Failure, Stream<QuerySnapshot>>> getAllLikes(String postID);
  Future<Either<Failure, bool>> addLike(AddLikeData addLikeData);
}