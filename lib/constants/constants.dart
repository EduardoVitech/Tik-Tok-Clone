import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:tiktok_clone/controllers/auth_controller/auth_controller.dart';
import 'package:tiktok_clone/views/screens/add_video_screen/add_video_screen.dart';
import 'package:tiktok_clone/views/screens/auth/video_screen/video_screen.dart';
import 'package:tiktok_clone/views/screens/message_screen/message_screen.dart';
import 'package:tiktok_clone/views/screens/profile_screen/profile_screen.dart';
import 'package:tiktok_clone/views/screens/search_screen/search_screen.dart';

List pages = [
  VideoScreen(),
  SearchScreen(),
  const AddVideoScreen(),
  const MessageScreen(),
  ProfileScreen(uid: authController.user.uid),
];

// COLORS
const backgroundColor = Colors.black;
var buttonColor = Colors.red[400];
const borderColor = Colors.grey;

// FIREBASE
var firebaseAuth = FirebaseAuth.instance;
var firebaseStorage = FirebaseStorage.instance;
var firestore = FirebaseFirestore.instance;

// CONTROLLER
var authController = AuthController.instance;
