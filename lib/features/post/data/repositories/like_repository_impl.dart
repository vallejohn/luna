import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:luna/core/states/failure.dart';
import 'package:luna/core/utils/params.dart';
import 'package:luna/features/post/data/data_sources/like_data_source.dart';

import '../../../../core/utils/app_logger.dart';
import '../../domain/repositories/like_repository.dart';

class LikeRepositoryImpl extends LikeRepository{
  LikeRepositoryImpl({required LikeDataSource likeDataSource}) : super(likeDataSource: likeDataSource);

  var log = AppLogger('LikeRepositoryImpl');

  @override
  Future<Either<Failure, bool>> addLike(AddLikeData addLikeData) async{

    try{
      log.i('Trying to add like');
      return Right(await likeDataSource.addLike(addLikeData));
    }catch(e){
      log.e('Error adding like to firebase: ${e.toString()}');
      throw UnimplementedError();
    }
  }

  @override
  Future<Either<Failure, Stream<QuerySnapshot<Object?>>>> getAllLikes(String postID) async{
    try{
      log.i('Getting all likes from firebase');
      final likes = await likeDataSource.getAllLikes(postID);
      return Right(likes);
    }catch(e){
      log.e('Error getting likes from firebase: ${e.toString()}');
      throw UnimplementedError();
    }
  }
}