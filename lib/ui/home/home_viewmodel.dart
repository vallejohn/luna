import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:luna/app/app.locator.dart';
import 'package:luna/app/app.router.dart';
import 'package:luna/models/post.dart';
import 'package:luna/services/firebase_auth_service.dart';
import 'package:luna/services/firestore_service.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

class HomeViewModel extends BaseViewModel {
  final title = 'luna';
  final _firestoreService = locator<FirestoreService>();
  final _navigationService = locator<NavigationService>();
  final _firebaseAuthService = locator<FirebaseAuthService>();

  late List<QueryDocumentSnapshot<Post>> _postsDocumentSnapshot;
  List<QueryDocumentSnapshot<Post>> get postsDocumentSnapshot =>
      _postsDocumentSnapshot;

  late final Stream<QuerySnapshot> _querySnapshot;
  Stream<QuerySnapshot> get querySnapshot => _querySnapshot;

  Future initHomeView() async {
    //_firestoreService.initialize(); // This is temporary, place this on StartupViewModel
    getPosts();
  }

  void goToWritePost() {
    _navigationService.navigateTo(Routes.writePostView)!.then((value) {
      return initHomeView();
    });
  }

  void goToPost(String postID) {
    _navigationService.navigateTo(Routes.postView, arguments: postID);
  }

  getPosts() async {
    _querySnapshot = _firestoreService.getPostsQuerySnapshot();
    notifyListeners();
  }

  Future signOut() async {
    await _firebaseAuthService.signOut().then((bool success) async {
      if (success) {
        await _navigationService.replaceWith(Routes.loginView);
      } else {
        print('Error while singing out');
      }
    });
  }
}
