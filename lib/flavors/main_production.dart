import 'package:firebase_core/firebase_core.dart';
import 'package:flutter_flavor/flutter_flavor.dart';
import 'package:luna/firebase_options_prod.dart';
import 'package:luna/main.dart' as base;

void main(){
  FlavorConfig(
    name: 'production',
    variables: <String, FirebaseOptions>{
      'firebase_options': DefaultFirebaseOptionsProd.currentPlatform
    }
  );
  return base.main();
}