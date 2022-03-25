import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:image_picker/image_picker.dart';
import 'package:logger/logger.dart';
import 'package:luna/core/services/firebase_service.dart';
import 'package:luna/core/states/data_state.dart';
import 'package:luna/core/utils/params.dart';
import 'package:luna/core/utils/statics/collection.dart';
import 'package:luna/features/post/data/data_sources/like_data_source.dart';
import 'package:luna/features/post/data/models/comment.dart';
import 'package:luna/features/post/data/models/recent_comment.dart';
import 'comment_data_source.dart';

class LikeDataSourceImpl extends LikeDataSource {
  LikeDataSourceImpl({
    required FirebaseService firebaseService,
  }) : super(firebaseService: firebaseService);

  @override
  Future<void> addLike(AddLikeData addLikeData) async{

    await firebaseService.firebaseFirestore
        .collection(Collection.posts)
        .doc(addLikeData.postID)
        .collection(Collection.likes)
        .add(addLikeData.like.toJson());

    await firebaseService.firebaseFirestore
        .collection(Collection.posts)
        .doc(addLikeData.postID)
        .update(RecentComment(recentComment: addLikeData.like.toJson())
        .toJson());

  }

  @override
  Future<Stream<QuerySnapshot<Object?>>> getAllLikes(String postID) {
    // TODO: implement getAllLikes
    throw UnimplementedError();
  }
}
