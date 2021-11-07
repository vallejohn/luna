import 'package:luna/services/firebase_auth_service.dart';
import 'package:luna/services/firebase_storage_service.dart';
import 'package:luna/services/firestore_service.dart';
import 'package:luna/services/image_picker_service.dart';
import 'package:luna/services/user_profile_service.dart';
import 'package:luna/ui/auth/login/login_view.dart';
import 'package:luna/ui/auth/register/register_view.dart';
import 'package:luna/ui/home/home_view.dart';
import 'package:luna/ui/location_search/location_search_view.dart';
import 'package:luna/ui/post/post_view.dart';
import 'package:luna/ui/profile/profile_view.dart';
import 'package:luna/ui/startup/startup_view.dart';
import 'package:luna/ui/write_post/write_post_view.dart';
import 'package:stacked/stacked_annotations.dart';
import 'package:stacked_services/stacked_services.dart';

@StackedApp(
  routes: [
    MaterialRoute(page: StartupView, initial: true),
    CupertinoRoute(page: HomeView),
    CupertinoRoute(page: WritePostView),
    CupertinoRoute(page: PostView),
    CupertinoRoute(page: LoginView),
    CupertinoRoute(page: RegisterView),
    CupertinoRoute(page: ProfileView),
    CupertinoRoute(page: LocationSearchView),
  ],
  dependencies: [
    LazySingleton(classType: FirestoreService),
    LazySingleton(classType: NavigationService),
    LazySingleton(classType: FirebaseAuthService),
    LazySingleton(classType: UserProfileService),
    LazySingleton(classType: FirebaseStorageService),
    LazySingleton(classType: ImagePickerService),
  ]
)

class AppSetup{
  //Does nothing
}