import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:luna/app/app.locator.dart';
import 'package:luna/models/comment.dart';
import 'package:luna/features/post/data/models/post.dart';
import 'package:luna/features/firebase_authentication/data/models/user_profile.dart';
import 'package:luna/services/firestore_service.dart';
import 'package:luna/services/user_profile_service.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

class PostViewModel extends BaseViewModel {
  final _firestoreService = locator<FirestoreService>();
  final _userProfileService = locator<UserProfileService>();
  final _navigationService = locator<NavigationService>();

  Post _post = Post();
  UserProfile _author = UserProfile();
  UserProfile _currentUser = UserProfile();
  List<Comment> _comments = [];
  Post get post => _post;
  UserProfile get author => _author;
  UserProfile get currentUser => _currentUser;
  List<Comment> get comments => _comments;

  String _postID = '';

  late final Stream<QuerySnapshot> _commentsQuerySnapshot;
  Stream<QuerySnapshot> get commentQuerySnapshot => _commentsQuerySnapshot;

  void initPost(BuildContext context) async {
    _currentUser = _userProfileService.currentUser;
    getPost(ModalRoute.of(context)!.settings.arguments as String);
    notifyListeners();
  }

  void getPost(String postID) async {
    _postID = postID;
    setBusy(true);
    final postRef = _firestoreService.getPost(postID);

    postRef.get().then((DocumentSnapshot documentSnapshot) async {
      _post = documentSnapshot.data() as Post;
      _commentsQuerySnapshot = _firestoreService.getCommentsQuerySnapshot(postID);
      _author = UserProfile.fromJson(_post.author as Map<String, dynamic>);
      setBusy(false);
      notifyListeners();
    });
  }

  void navigateBack() {
    _navigationService.back();
  }

  void addComment(String commentBody) async {
    await _firestoreService.addComment(
      _postID,
      _post.commentCount!,
      Comment(userProfile: _userProfileService.currentUser.toJson(), body: commentBody),
    );
  }
}
