import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:image_picker/image_picker.dart';
import 'package:logger/logger.dart';
import 'package:luna/core/services/firebase_service.dart';
import 'package:luna/core/states/data_state.dart';
import 'package:luna/core/utils/params.dart';
import 'package:luna/core/utils/statics/collection.dart';
import 'package:luna/core/utils/statics/firestore_fields.dart';
import 'package:luna/features/post/data/models/comment.dart';
import 'package:luna/features/post/data/models/engagement.dart';
import 'package:luna/features/post/data/models/recent_comment.dart';
import '../../../../core/utils/app_logger.dart';
import 'comment_data_source.dart';

class CommentDataSourceImpl extends CommentDataSource {
  CommentDataSourceImpl({
    required FirebaseService firebaseService,
  }) : super(firebaseService: firebaseService);

  var log = AppLogger('CommentDataSourceImpl');

  @override
  Future<DataState<PickedFile, Exception>> browseCommentImage() {
    // TODO: implement browseCommentImage
    throw UnimplementedError();
  }

  @override
  Future<Stream<QuerySnapshot<Object?>>> getAllComments(String postID) async {
    log.i('Accessing firebase service for getting all comments');
    return firebaseService.firebaseFirestore.collection(Collection.posts).doc(postID).collection(Collection.comments).snapshots();
  }

  @override
  Future<void> addComment(AddCommentData addCommentData) async {

    DocumentReference document = firebaseService.firebaseFirestore.collection(Collection.posts).doc(addCommentData.postID);

    await document.collection(Collection.comments).add(addCommentData.comment.toJson());
    await document.update(RecentComment(recentComment: addCommentData.comment.toJson()).toJson());
    await document.update({EngagementField.comments: addCommentData.commentCount + 1});
  }
}
