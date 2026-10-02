import 'package:flutter/material.dart';
import 'package:pm1_tugas1/config/routes.dart';
import 'package:pm1_tugas1/screens/signup_screen.dart';
import 'package:pm1_tugas1/screens/signin_screen.dart';
import 'package:pm1_tugas1/screens/home_screen.dart';
import 'package:pm1_tugas1/screens/detail_screen.dart';
import 'package:pm1_tugas1/screens/favorite_screen.dart';
import 'package:pm1_tugas1/screens/profile_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'AnimeVerse',
      theme: ThemeData(
        fontFamily: 'Urbanist',
      ),
      routerConfig: createRouter(),
      // home: const SignUpScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}