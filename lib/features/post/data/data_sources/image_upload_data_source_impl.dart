import 'dart:io';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:logger/logger.dart';
import 'package:luna/core/services/firebase_service.dart';
import 'package:luna/core/states/data_state.dart';
import 'package:luna/core/utils/params.dart';
import 'package:luna/core/utils/statics/storage.dart';
import 'package:luna/features/post/data/data_sources/image_upload_data_source.dart';

class ImageUploadDataSourceImpl extends ImageUploadDataSource {
  ImageUploadDataSourceImpl({
    required FirebaseService firebaseService
  }) : super(
      firebaseService: firebaseService
  );

  @override
  Future<DataState<String, FirebaseException>> uploadImage(ImageUploadParam param) async{
    Logger().i('Accessing firebase service for image upload');
    final dataState = await firebaseService.uploadImage(
        uID: param.userID,
        file: File(param.imagePath),
        storageLocation: Storage.postCovers);

    return dataState.when(
        success: (imageUrl){
          return DataState.success(data: imageUrl);
        }, failed: (error){
          return DataState.failed(error: error);
    });
  }
}
