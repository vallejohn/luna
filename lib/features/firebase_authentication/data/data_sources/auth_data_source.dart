import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:luna/core/states/auth_state.dart';
import 'package:luna/core/utils/enums.dart';
import 'package:luna/core/states/data_state.dart';
import 'package:luna/core/utils/params.dart';
import 'package:luna/features/firebase_authentication/data/models/user_profile_model.dart';

abstract class AuthDataSource{
  final FirebaseAuth firebaseAuth;
  final CollectionReference collection;

  AuthDataSource({
    required this.firebaseAuth,
    required this.collection
  });

  Future<DataState<UserProfileModel, LoginError>> signInWithEmailAndPassword(LoginCredentials params);
  Future<AuthState> getActiveUser();
}