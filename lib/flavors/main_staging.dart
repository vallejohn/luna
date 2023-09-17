import 'package:firebase_core/firebase_core.dart';
import 'package:flutter_flavor/flutter_flavor.dart';
import 'package:luna/main.dart' as base;

import '../firebase_options_staging.dart';

void main(){
  FlavorConfig(
    name: 'staging',
    variables: <String, FirebaseOptions>{
      'firebase_options': DefaultFirebaseOptionsStaging.currentPlatform
    }
  );
  return base.main();
}