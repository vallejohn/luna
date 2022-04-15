import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:logger/logger.dart';
/*import 'package:luna/models/comment.dart';*/
import 'package:luna/features/post/data/models/post.dart';
import 'package:luna/features/firebase_authentication/data/models/user_profile.dart';

const String POSTS = 'posts';
const String USERS = 'users';
const String COMMENTS = 'comments';

class FirestoreService {
  late final FirebaseFirestore _firestore;
  late final CollectionReference _posts;
  late final CollectionReference _users;

  final Logger logger = Logger();

  void initialize() {
    _firestore = FirebaseFirestore.instance;
    _posts = _firestore.collection(POSTS);
    _users = _firestore.collection(USERS);
  }

  Future<DocumentReference> addPost(Post post) async {
    late DocumentReference documentReference;
    await _posts
        .add(post.toJson())
        .then((postRef) => documentReference = postRef);
    return documentReference;
  }

  Future<DocumentReference> addUserToCollection(UserProfile userProfile) async {
    logger.i(userProfile.toJson().toString());
    late DocumentReference documentReference;
    await _users
        .add(userProfile.toJson())
        .then((userRef) => documentReference = userRef);
    return documentReference.withConverter<UserProfile>(
        fromFirestore: (snapshot, _) => UserProfile.fromJson(snapshot.data()!),
        toFirestore: (user, _) => user.toJson());
  }

  Future<UserProfile> getUserFromCollection(String authID) async {
    QuerySnapshot snapshot =
        await _users.where('authID', isEqualTo: authID).get();
    UserProfile? userProfile = UserProfile.fromJson(
        snapshot.docs.first.data() as Map<String, dynamic>);
    return userProfile;
  }

/*  Future addComment(String postID, int commentCount, Comment comment) async {
    await _posts.doc(postID).collection(COMMENTS).add(comment.toJson());
    await _posts.doc(postID).update(
        {'recentComment': comment.toJson(), 'commentCount': commentCount + 1});
  }*/

  DocumentReference getPost(String postID) {
    return _posts.doc(postID).withConverter<Post>(
        fromFirestore: (snapshot, _) => Post.fromJson(snapshot.data()!),
        toFirestore: (post, _) => post.toJson());
  }

  Stream<QuerySnapshot> getPostsQuerySnapshot() {
    return _posts.snapshots();
  }

  Stream<QuerySnapshot> getCommentsQuerySnapshot(String postID) {
    return _posts.doc(postID).collection(COMMENTS).snapshots();
  }
}
