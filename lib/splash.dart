import 'package:flutter/material.dart';
import 'learn.dart';
import 'dashboard.dart';
import 'main.dart';

class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState(){
    super.initState();
      _navigatetohome();
  }
  _navigatetohome()async{
    await Future.delayed(Duration(milliseconds: 2000), () {});
    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>Dashboard(title: 'Sign Guide')));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          child: Text('Sign Guide ',
          style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold, backgroundColor: Colors.lightBlueAccent,),
          ),
        ),
      ),
    );
  }
}