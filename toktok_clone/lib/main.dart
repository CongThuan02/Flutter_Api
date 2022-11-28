import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:toktok_clone/constants.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:toktok_clone/controllers/auth_controller.dart';
import 'package:toktok_clone/views/screens/auth/sigup_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp().then(
    (value) {
      Get.put(AuthController());
    },
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Tiktok clone',
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: backgroundCould,
      ),
      home: SigupScreen(),
    );
  }
}
