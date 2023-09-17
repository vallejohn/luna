library authentication_module;

import 'dart:async';

import 'package:authentication_module/exceptions.dart';
import 'package:authentication_module/models.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:path/path.dart';

enum AuthStatus { guest, authenticated, unauthenticated }

class AuthenticationModule {
  final _controller = StreamController<AuthStatus>();

  String _defaultImageStoragePath = 'images/users/';
  String _defaultCollection = 'users';

  final String _imageUrlKey = 'imageUrl';
  final String _uidKey = 'uid';

  UserAccount? _userAccount;
  UserAccount? get userAccount => _userAccount;

  Future<void> initialize({
    required FirebaseOptions firebaseOptions,
    String? imageStoragePath,
    String? collectionName,
  }) async {
    if (collectionName != null) _defaultCollection = collectionName;
    if (imageStoragePath != null) {
      _defaultImageStoragePath = '$imageStoragePath${imageStoragePath[imageStoragePath.length - 1] == '/' ? '' : '/'}';
    }

    await Firebase.initializeApp(
      options: firebaseOptions,
    );
  }

  Stream<AuthStatus> get authStatus async* {
    FirebaseAuth.instance.authStateChanges().listen((user) {
      if (user != null) {
        _controller.add(AuthStatus.authenticated);
      } else {
        _controller.add(AuthStatus.unauthenticated);
      }
    });
    yield* _controller.stream;
  }

  Future<void> signIn(String username, String password) async {
    UserCredential? userCredential;

    try{
      userCredential = await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: username,
        password: password,
      );
    }on FirebaseAuthException catch(e){
      switch (e.code) {
        case 'user-not-found':
          UserNotFoundException();
          break;
        case 'wrong-password':
          InvalidPasswordException();
          break;
      }
    }

    await getUserAccount(userCredential!.user!.uid);

    _controller.add(AuthStatus.authenticated);
  }

  Future<void> signup(
    String username,
    String password, {
    UserAccount? userAccount,
    Image? image,
  }) async {
    UserCredential? userCredentials;
    String? imageUrl;

    try {
      userCredentials = await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: username,
        password: password,
      );
    } on FirebaseAuthException catch (e) {
      switch (e.code) {
        case 'weak-password':
          WeakPasswordException();
          break;
        case 'email-already-in-use':
          EmailExistException();
          break;
      }
    }

    if (image != null) {
      assert(image.imageFile.path.isNotEmpty, 'File path for image is empty');
      assert(image.folderName.isNotEmpty, 'folder name must not be an empty string');

      UploadTask uploadTask = FirebaseStorage.instance
          .ref()
          .child('$_defaultImageStoragePath${image.folderName}/${basename(image.imageFile.path)}')
          .putFile(image.imageFile);
      TaskSnapshot taskSnapshot = await uploadTask.then((TaskSnapshot taskSnapshot) => taskSnapshot);
      imageUrl = await taskSnapshot.ref.getDownloadURL();
    }

    if (userAccount != null) {
      assert(userAccount.data.isNotEmpty, 'Data must not be empty if you want to save user credentials to collection');

      Map<String, dynamic> data = userAccount.data;
      data.addAll({_uidKey: userCredentials!.user!.uid});
      data.addAll({_imageUrlKey: imageUrl ?? ''});
      await FirebaseFirestore.instance.collection(_defaultCollection).add(userAccount.data);
    }

    _userAccount = userAccount!.copyWith(
      uid: userCredentials!.user!.uid,
      imageUrl: imageUrl!,
    );
  }

  Future<void> getUserAccount(String uid)async {
    final snapshot = await FirebaseFirestore.instance.collection(_defaultCollection)
        .where(_uidKey, isEqualTo: uid).get();

    Map<String, dynamic> docMap = snapshot.docs.first.data();
    String imageUrl = docMap[_imageUrlKey];
    docMap.remove(_imageUrlKey);

    _userAccount = UserAccount(
      uid: uid,
      imageUrl: imageUrl,
      data: snapshot.docs.first.data(),
    );
  }
}
