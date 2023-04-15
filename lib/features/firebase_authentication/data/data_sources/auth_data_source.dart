import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:luna/core/services/firebase_service.dart';
import 'package:luna/core/states/auth_state.dart';
import 'package:luna/core/utils/params.dart';
import 'package:luna/features/firebase_authentication/data/models/account.dart';

abstract class AuthDataSource{
  final FirebaseAuth firebaseAuth;
  final CollectionReference usersCollection;
  final FirebaseService firebaseService;

  AuthDataSource({
    required this.firebaseAuth,
    required this.usersCollection,
    required this.firebaseService,
  });

  Future<Account> signInWithEmailAndPassword(LoginCredentials params);
  Future<Account> signUpWithEmailAndPassword(SignUpCredentials params);
  Future<AuthState> getActiveUser();
  Future<Stream<QuerySnapshot>> getUserInfoFromCollections(String authID);
  Future<void> signOut();
}