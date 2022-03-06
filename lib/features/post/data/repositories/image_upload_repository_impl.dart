import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:logger/logger.dart';
import 'package:luna/core/states/data_state.dart';
import 'package:luna/core/states/failure.dart';
import 'package:luna/core/utils/params.dart';
import 'package:luna/features/post/data/data_sources/image_upload_data_source.dart';
import 'package:luna/features/post/domain/repositories/image_upload_repository.dart';

class ImageUploadRepositoryImpl extends ImageUploadRepository{
  ImageUploadRepositoryImpl({
    required ImageUploadDataSource imageUploadDataSource
  }) : super(
      imageUploadDataSource: imageUploadDataSource
  );

  @override
  Future<Either<Failure, DataState<String, FirebaseException>>> uploadImage(ImageUploadParam param) async{
    try{
      Logger().i('Trying to upload image');
      final dataState = await imageUploadDataSource.uploadImage(param);
      return Right(dataState);
    }catch (e){
      Logger().i('Upload image failed: $e');
      return Left(Failure.firebase(message: e.toString()));
    }
  }
}