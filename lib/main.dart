import 'package:flutter/material.dart';
import 'package:sign_guide/splash.dart';
import 'package:sign_guide/dashboard.dart';
import 'dashboard.dart';
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
