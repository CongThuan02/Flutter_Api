// ignore_for_file: unused_import

import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_auth_web/firebase_auth_web.dart';
import 'package:firebase_storage/firebase_storage.dart';

import 'package:firebase_storage_web/firebase_storage_web.dart';
import 'package:flutter_web_plugins/flutter_web_plugins.dart';
import 'package:firebase_core_web/firebase_core_web.dart';

void registerPlugins(Registrar registrar) {
  FirebaseAuthWeb.registerWith(registrar);
  FirebaseCoreWeb.registerWith(registrar);
  FirebaseStorageWeb.registerWith(registrar);
  registrar.registerMessageHandler();
}
