import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:logger/logger.dart';
import 'package:luna/core/states/auth_state.dart';
import 'package:luna/core/utils/enums.dart';
import 'package:luna/core/states/data_state.dart';
import 'package:luna/core/utils/errors.dart';
import 'package:luna/core/utils/params.dart';
import 'package:luna/features/firebase_authentication/data/data_sources/auth_data_source.dart';
import 'package:luna/features/firebase_authentication/data/models/user_profile_model.dart';

class AuthDataSourceImpl extends AuthDataSource{
  AuthDataSourceImpl({
    required FirebaseAuth firebaseAuth,
    required CollectionReference collection
  }) : super(
      firebaseAuth: firebaseAuth,
      usersCollection: collection
  );

  @override
  Future<DataState<UserProfileModel, LoginError>> signInWithEmailAndPassword(LoginCredentials params) async{
    UserCredential userCredential;

    try{
      userCredential = await firebaseAuth.signInWithEmailAndPassword(
          email: params.email,
          password: params.password
      );
      return DataState.success(data: await _getUserFromCollection(userCredential.user!.uid));
    }on FirebaseAuthException catch(e){
      return DataState.failed(error: AuthError.getLoginErrorFromCode(e.code));
    }
  }

  @override
  Future<AuthState> getActiveUser() async{
    User? user = firebaseAuth.currentUser;

    if(user != null){
      Logger().i('User found');
      return AuthState.authenticated(data: await _getUserFromCollection(user.uid));
    }else{
      Logger().w('User not found');
      return AuthState.unAuthenticated();
    }
  }

  Future<UserProfileModel> _getUserFromCollection(String authID) async{
    Logger().i('Getting user information from collection using $authID');

    QuerySnapshot snapshot = await usersCollection.where('authID', isEqualTo: authID).get();
    UserProfileModel? userProfileModel = UserProfileModel.fromJson(
      snapshot.docs.first.data() as Map<String, dynamic>
    );
    return userProfileModel;
  }
}