import 'dart:io';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:image_picker/image_picker.dart';
import 'package:logger/logger.dart';
import 'package:luna/core/services/firebase_service.dart';
import 'package:luna/core/states/data_state.dart';
import 'package:luna/core/utils/enums.dart';
import 'package:luna/core/utils/errors.dart';
import 'package:luna/core/utils/params.dart';
import 'package:luna/core/utils/statics/collection.dart';
import 'package:luna/features/post/data/data_sources/post_data_source.dart';
import 'package:luna/features/post/data/models/engagement.dart';
import 'package:luna/features/post/data/models/post.dart';
import 'package:luna/core/utils/statics/storage.dart';

import '../../../../core/utils/app_logger.dart';

class PostDataSourceImpl extends PostDataSource {
  PostDataSourceImpl({
    required FirebaseService firebaseService,
  }) : super(firebaseService: firebaseService);

  var log = AppLogger('PostDataSourceImpl');

  @override
  Future<DataState<Stream<QuerySnapshot>, PostError>> getAllPosts() async {
    return DataState.success(data: firebaseService.firebaseFirestore.collection(Collection.posts).snapshots());
  }

  @override
  Future<DataState<PickedFile, NoError>> browsePostCoverImage() async {
    // ignore: invalid_use_of_visible_for_testing_member
    PickedFile? image = await ImagePicker.platform.pickImage(source: ImageSource.gallery, imageQuality: 50);

    if (image != null) {
      return DataState.success(data: image);
    } else {
      return DataState.failed(error: NoError());
    }
  }

  @override
  Future<DataState<DocumentReference, FirebaseException>> addPost(AddPostData addPostData) async {
    try{
      late DocumentReference documentReference;
      String imagePath = '';

      if(addPostData.imagePath.isNotEmpty){
        log.i('Accessing firebase service for image upload');
        final dataState = await firebaseService.uploadImage(
            uID: addPostData.user!.authID!,
            file: File(addPostData.imagePath),
            storageLocation: Storage.postCovers);

        dataState.when(
          success: (imageUrl){
            imagePath = imageUrl;
            log.i('Image uploaded successfully');
          },
          failed: (error){
            log.i('Failed to upload image: ${error.toString()}');
            return DataState.failed(error: error);
          },
        );
      }

      await firebaseService.firebaseFirestore.collection(Collection.posts).add(Post(
          author: addPostData.user!.toJson(),
          title: addPostData.title,
          content: addPostData.content,
          engagement: Engagement().toJson(),
          createdAt: Timestamp.now(),
          coverImageURL: imagePath)
          .toJson()).then((reference) => documentReference = reference);
      return DataState.success(data: documentReference);
    }on FirebaseException catch(e){
      return DataState.failed(error: e);
    }
  }
}
