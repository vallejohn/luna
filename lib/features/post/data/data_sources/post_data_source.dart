import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:image_picker/image_picker.dart';
import 'package:luna/core/services/firebase_service.dart';
import 'package:luna/core/states/data_state.dart';
import 'package:luna/core/utils/enums.dart';
import 'package:luna/core/utils/errors.dart';
import 'package:luna/core/utils/params.dart';

abstract class PostDataSource{
  final FirebaseService firebaseService;

  PostDataSource({
    required this.firebaseService,
  });

  Future<DataState<Stream<QuerySnapshot>, PostError>> getAllPosts();
  Future<DataState<PickedFile, NoError>> browsePostCoverImage();
  Future<DataState<DocumentReference, NoError>> addPost(AddPostData addPostData);
}