import 'package:luna/app/app.locator.dart';
import 'package:luna/services/user_profile_service.dart';
import 'package:mockito/annotations.dart';
import 'package:stacked_services/stacked_services.dart';

import 'test_helpers.mocks.dart';

@GenerateMocks([], customMocks: [
  // If we don't supply returnNullOnMissingStub then we'll get an exception when
  // a non-stubbed method is called.
  MockSpec<UserProfileService>(returnNullOnMissingStub: true),
  MockSpec<NavigationService>(returnNullOnMissingStub: true),
])

void _removeRegistrationIfExists<T extends Object>(){
  if(locator.isRegistered<T>()){
    locator.unregister<T>();
  }
}

UserProfileService getAndRegisterUserProfileService(){
  _removeRegistrationIfExists<UserProfileService>();
  final service = MockUserProfileService();
  locator.registerSingleton<UserProfileService>(service);
  return service;
}

NavigationService getAndRegisterNavigationService(){
  _removeRegistrationIfExists<NavigationService>();
  final service = MockNavigationService();
  locator.registerSingleton<NavigationService>(service);
  return service;
}

void registerServices(){
  getAndRegisterUserProfileService();
  getAndRegisterNavigationService();
}

void unregisterServices(){
  locator.unregister<UserProfileService>();
  locator.unregister<NavigationService>();
}