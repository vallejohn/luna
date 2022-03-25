import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:image_picker/image_picker.dart';
import 'package:luna/core/services/firebase_service.dart';
import 'package:luna/core/states/data_state.dart';
import 'package:luna/core/utils/enums.dart';
import 'package:luna/core/utils/errors.dart';
import 'package:luna/core/utils/params.dart';

abstract class LikeDataSource{
  final FirebaseService firebaseService;

  LikeDataSource({
    required this.firebaseService,
  });

  Future<Stream<QuerySnapshot>> getAllLikes(String postID);
  Future<void> addLike(AddLikeData addLikeData);
}