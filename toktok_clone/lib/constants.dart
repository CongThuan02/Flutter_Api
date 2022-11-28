import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:toktok_clone/controllers/auth_controller.dart';

// color

const backgroundCould = Colors.black;
var buttonColor = Colors.red[400];
const borderColor = Colors.grey;

// Firebase;
var firebaseAuth = FirebaseAuth.instance;
var firebaseStorage = FirebaseStorage.instance;
var fireStore = FirebaseFirestore.instance;

//controller
var authController = AuthController.instance;
