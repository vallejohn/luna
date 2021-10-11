import 'package:flutter_test/flutter_test.dart';
import 'package:luna/ui/startup/startup_viewmodel.dart';
import 'package:mockito/mockito.dart';

import '../helpers/test_helpers.dart';

void main() {
  group('StartupViewModelTest -', () {
    setUp(() => registerServices());
    tearDown(() => unregisterServices());
    
    group('getCurrentUser', () {
      test('Check if the user is currently loggedin using firebaseauth', () async {
        final userProfileService = getAndRegisterUserProfileService();
        var model = StartupViewModel();
        await model.getCurrentUser();
        verify(userProfileService.currentUser);
      });
    });
  });
}
