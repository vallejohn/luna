import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:luna/core/states/auth_state.dart';
import 'package:luna/core/utils/enums.dart';
import 'package:luna/core/states/data_state.dart';
import 'package:luna/core/utils/params.dart';

abstract class AuthDataSource{
  final FirebaseAuth firebaseAuth;
  final CollectionReference usersCollection;

  AuthDataSource({
    required this.firebaseAuth,
    required this.usersCollection,
  });

  Future<DataState<UserProfileParam, LoginError>> signInWithEmailAndPassword(LoginCredentials params);
  Future<AuthState> getActiveUser();
  Future<void> signOut();
}