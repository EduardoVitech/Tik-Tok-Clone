import 'package:flutter/material.dart';
import 'package:tiktok_clone/constants/constants.dart';
import 'package:tiktok_clone/views/screens/auth/login_screen/login_screen.dart';
import 'package:tiktok_clone/views/screens/auth/signup_screen/signup_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'TikTok Clone',
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: backgroundColor,
      ),
      home: SignupScreen(),
    );
  }
}
