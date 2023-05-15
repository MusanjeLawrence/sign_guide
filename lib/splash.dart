import 'package:flutter/material.dart';
import 'alphabets.dart';
import 'dashboard.dart';
import 'main.dart';
import 'dart:async';

class Splash extends StatefulWidget {
  const Splash({Key? key}) : super(key: key);

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  void initState() {
    super.initState();
    Timer(Duration(seconds: 3), () {
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (context) => Dashboard(title: "Dashboard")), // replace with actual widget for dashboard screen
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Sign Guide',
              style: TextStyle(
                fontSize: 50.0,
                fontWeight: FontWeight.bold,
                color: Colors.lightBlueAccent,
              ),
            ),
            // SizedBox(height: 16.0),
            // Image.asset(
            //   'assets/images/logo.jpg',
            //   height: 500.0,
            //   width: 400.0,
            // ),
          ],
        ),
      ),
    );
  }
}
