import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tiktok_clone/constants/constants.dart';
import 'package:tiktok_clone/views/screens/auth/login_screen/login_screen.dart';
import 'controllers/auth_controller/auth_controller.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  if (kIsWeb) {
    await Firebase.initializeApp(
      options: const FirebaseOptions(
          apiKey: "AIzaSyDsztQf7hx25npSxQHgw-zpWLW69wB__8k",
          authDomain: "tiktok-clone-4bb72.firebaseapp.com",
          databaseURL: "https://tiktok-clone-4bb72-default-rtdb.firebaseio.com",
          projectId: "tiktok-clone-4bb72",
          storageBucket: "tiktok-clone-4bb72.appspot.com",
          messagingSenderId: "115140636940",
          appId: "1:115140636940:web:7330df9b5fea41e0b2d929"),
    ).then((value) {
      Get.put(AuthController());
    });
  } else {
    await Firebase.initializeApp().then((value) {
      Get.put(AuthController());
    });
  }
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'TikTok Clone',
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: backgroundColor,
      ),
      home: LoginScreen(),
    );
  }
}
