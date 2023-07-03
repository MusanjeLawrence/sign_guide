import 'package:flutter/material.dart';
import 'package:sign_guide/dashboard.dart';
import 'package:sign_guide/settings.dart';
import 'package:sign_guide/share.dart';
import 'package:sign_guide/splash.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int _currentIndex = 0;

  final List<Widget> _pages = [
    Dashboard(title: "Home"),
    Settings(),
    Share(),
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Sign Guide',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.teal,
      ),
      home: Scaffold(
        body: _pages[_currentIndex],
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: _currentIndex,
          onTap: (index) {
            setState(() {
              _currentIndex = index;
            });
          },
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.settings),
              label: 'Settings',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.share),
              label: 'Share',
            ),
          ],
        ),
      ),
    );
  }
}

class Page1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Dashboard(title: "Home");
  }
}

class Page2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Settings();
  }
}

class Page3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Share();
  }
}
