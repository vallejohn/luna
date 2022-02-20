import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:image_picker/image_picker.dart';
import 'package:luna/core/states/data_state.dart';
import 'package:luna/core/utils/enums.dart';
import 'package:luna/core/utils/errors.dart';

abstract class PostDataSource{
  final FirebaseFirestore firestore;
  final FirebaseStorage firebaseStorage;
  final CollectionReference postsCollection;

  PostDataSource({
    required this.firestore,
    required this.postsCollection,
    required this.firebaseStorage
  });

  Future<DataState<Stream<QuerySnapshot>, PostError>> getAllPosts();
  Future<DataState<PickedFile, NoError>> uploadPostCoverImage();
}