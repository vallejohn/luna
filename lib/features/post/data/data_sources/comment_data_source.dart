import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:image_picker/image_picker.dart';
import 'package:luna/core/services/firebase_service.dart';
import 'package:luna/core/states/data_state.dart';
import 'package:luna/core/utils/enums.dart';
import 'package:luna/core/utils/errors.dart';
import 'package:luna/core/utils/params.dart';

abstract class CommentDataSource{
  final FirebaseService firebaseService;

  CommentDataSource({
    required this.firebaseService,
  });

  Future<Stream<QuerySnapshot>> getAllComments(String postID);
  Future<DataState<PickedFile, Exception>> browseCommentImage();
  Future<void> addComment(AddCommentData addCommentData);
}