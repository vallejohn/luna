import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:luna/core/services/firebase_service.dart';
import 'package:luna/core/utils/params.dart';
import 'package:luna/core/utils/statics/collection.dart';
import 'package:luna/core/utils/statics/firestore_fields.dart';
import 'package:luna/features/firebase_authentication/data/models/user_profile.dart';
import 'package:luna/features/post/data/data_sources/like_data_source.dart';

class LikeDataSourceImpl extends LikeDataSource {
  LikeDataSourceImpl({
    required FirebaseService firebaseService,
  }) : super(firebaseService: firebaseService);

  @override
  Future<bool> addLike(AddLikeData addLikeData) async{

    DocumentReference document = firebaseService.firebaseFirestore.collection(Collection.posts.value).doc(addLikeData.postID);

    final user = UserProfile.fromJson(addLikeData.like.userProfile as Map<String, dynamic>);
    QuerySnapshot snapshot =  await document.collection(Collection.likes.value).where('authID', isEqualTo: user.authID).get();

    //TODO !! Warning, bunch of document reads please revise.
    if(snapshot.docs.isEmpty){
      await document.collection(Collection.likes.value).add(user.toJson());
      await document.update({EngagementField.likes: addLikeData.likeCount + 1});
      return true;
    }else{
      await document.collection(Collection.likes.value).doc(snapshot.docs.first.id).delete();
      await document.update({EngagementField.likes: addLikeData.likeCount - 1});
      return false;
    }
  }

  @override
  Future<Stream<QuerySnapshot<Object?>>> getAllLikes(String postID) {
    // TODO: implement getAllLikes
    throw UnimplementedError();
  }
}
