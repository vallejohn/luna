import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:image_picker/image_picker.dart';
import 'package:luna/core/states/data_state.dart';
import 'package:luna/core/states/failure.dart';
import 'package:luna/core/utils/enums.dart';
import 'package:luna/core/utils/params.dart';
import 'package:luna/features/post/data/data_sources/post_data_source.dart';

import '../../../../core/utils/errors.dart';

abstract class PostRepository{
  final PostDataSource postDataSource;
  PostRepository({required this.postDataSource});

  Future<Either<Failure, DataState<Stream<QuerySnapshot>, PostError>>> getAllPosts();
  Future<Either<Failure, DataState<PickedFile, NoError>>> uploadPostCoverImage();
  Future<Either<Failure, DataState<DocumentReference, FirebaseException>>> addPost(AddPostData addPostData);
}