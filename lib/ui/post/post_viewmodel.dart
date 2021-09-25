import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:luna/app/app.locator.dart';
import 'package:luna/models/comment.dart';
import 'package:luna/models/post.dart';
import 'package:luna/services/firestore_service.dart';
import 'package:luna/services/user_profile_service.dart';
import 'package:stacked/stacked.dart';

class PostViewModel extends BaseViewModel{
  final _firestoreService = locator<FirestoreService>();
  final _userProfileService = locator<UserProfileService>();

  Post _post = Post();
  List<Comment> _comments = [];
  Post get post => _post;
  List<Comment> get comments => _comments;
  
  String _postID = '';

  late final Stream<QuerySnapshot> _commentsQuerySnapshot;
  Stream<QuerySnapshot> get commentQuerySnapshot => _commentsQuerySnapshot;

  void initPost(BuildContext context) async{
    getPost(ModalRoute.of(context)!.settings.arguments as String);
  }

  void getPost(String postID) async{
    _postID = postID;
    setBusy(true);
    final postRef = _firestoreService.getPost(postID);

    postRef.get().then((DocumentSnapshot documentSnapshot) async{
      _post = documentSnapshot.data() as Post;
      _commentsQuerySnapshot = _firestoreService.getCommentsQuerySnapshot(postID);
      setBusy(false);
      notifyListeners();
    });
  }

  void addComment(String commentBody) async{
    await _firestoreService.addComment(_postID, _post.commentCount!,
      Comment(
        userProfile: _userProfileService.currentUser.toJson(),
        body: commentBody
      ),
    );
  }
}