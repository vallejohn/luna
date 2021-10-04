import 'package:luna/app/app.locator.dart';
import 'package:luna/app/app.router.dart';
import 'package:luna/models/post.dart';
import 'package:luna/services/firestore_service.dart';
import 'package:luna/services/user_profile_service.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

class WritePostViewModel extends BaseViewModel{
  final String title = 'Write Your Story';
  final _firestoreService = locator<FirestoreService>();
  final _navigationService = locator<NavigationService>();
  final _userProfileService = locator<UserProfileService>();

  void addPost(String title, String content) async{
    setBusy(true);
    await _firestoreService.addPost(
        Post(
          title: title,
          content: content,
          commentCount: 0,
          author: _userProfileService.currentUser.toJson()
        )
    ).then((postRef) {
      _navigationService.replaceWith(Routes.postView, arguments: postRef.id);
    });
    setBusy(false);
    notifyListeners();
   // _navigationService.replaceWith(Routes.homeView);
  }
}