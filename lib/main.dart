import 'package:flutter/material.dart';
import 'package:sign_guide/settings.dart';
import 'package:sign_guide/share.dart';
import 'package:sign_guide/sign_to_text.dart';
import 'package:sign_guide/splash.dart';
import 'package:sign_guide/dashboard.dart';
import 'package:sign_guide/text_to_sign.dart';
import 'package:sign_guide/treasure.dart';
import 'package:sign_guide/voice_to_sign.dart';
import 'image_to_sign.dart';
import 'alphabets.dart';
import 'learn.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Sign Guide',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        
        primarySwatch: Colors.blue,
      ),
      home:Splash(),
    );
  }
  }

