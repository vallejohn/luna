import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:luna/core/states/auth_state.dart';
import 'package:luna/core/utils/app_logger.dart';
import 'package:luna/core/utils/enums.dart';
import 'package:luna/core/states/data_state.dart';
import 'package:luna/core/utils/errors.dart';
import 'package:luna/core/utils/params.dart';
import 'package:luna/features/firebase_authentication/data/data_sources/auth_data_source.dart';
import 'package:luna/features/firebase_authentication/data/models/user_profile.dart';

class AuthDataSourceImpl extends AuthDataSource{
  AuthDataSourceImpl({
    required FirebaseAuth firebaseAuth,
    required CollectionReference collection,
  }) : super(
      firebaseAuth: firebaseAuth,
      usersCollection: collection,
  );

  var log = AppLogger('AuthDataSourceImpl');

  @override
  Future<DataState<UserProfileParam, LoginError>> signInWithEmailAndPassword(LoginCredentials params) async{
    UserCredential userCredential;

    try{
      userCredential = await firebaseAuth.signInWithEmailAndPassword(
          email: params.email,
          password: params.password
      );
      UserProfile userProfile = await _getUserFromCollection(userCredential.user!.uid);

      return DataState.success(data: UserProfileParam(
        user: userProfile
      ));
    }on FirebaseAuthException catch(e){
      return DataState.failed(error: AuthError.getLoginErrorFromCode(e.code));
    }
  }

  @override
  Future<AuthState> getActiveUser() async{
    User? user = firebaseAuth.currentUser;

    if(user != null){
      log.i('User found');
      UserProfile userProfile = await _getUserFromCollection(user.uid);

      return AuthState.authenticated(data: UserProfileParam(
        user: userProfile
      ));
    }else{
      log.w('User not found');
      return AuthState.unAuthenticated();
    }
  }

  Future<UserProfile> _getUserFromCollection(String authID) async{
    log.i('Getting user information from collection using $authID');

    QuerySnapshot snapshot = await usersCollection.where('authID', isEqualTo: authID).get();
    UserProfile? userProfile = UserProfile.fromJson(
      snapshot.docs.first.data() as Map<String, dynamic>
    );
    return userProfile;
  }

  @override
  Future<void> signOut() async{
    await firebaseAuth.signOut();
  }
}