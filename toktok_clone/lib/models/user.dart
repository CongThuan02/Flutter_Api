import 'dart:convert';

import 'package:cloud_firestore/cloud_firestore.dart';

// ignore_for_file: public_member_api_docs, sort_constructors_first
class User {
  String name;
  String profilePhoto;
  String email;
  String uid;
  User({
    required this.name,
    required this.profilePhoto,
    required this.email,
    required this.uid,
  });

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      'name': name,
      'profilePhoto': profilePhoto,
      'email': email,
      'uid': uid,
    };
  }

  factory User.fromMap(Map<String, dynamic> map) {
    return User(
      name: map['name'] as String,
      profilePhoto: map['profilePhoto'] as String,
      email: map['email'] as String,
      uid: map['uid'] as String,
    );
  }

  static User formSnap(DocumentSnapshot snap) {
    var snapshot = snap.data() as Map<String, dynamic>;
    return User(
      email: snapshot['email'],
      name: snapshot['name'],
      profilePhoto: snapshot['profilePhoto'],
      uid: snapshot['uid'],
    );
  }
}
