import 'package:flutter/material.dart';
import 'dashboard.dart';
import 'main.dart';
import 'dart:async';

// class Splash extends StatefulWidget {
//   const Splash({super.key});
//
//   @override
//   State<Splash> createState() => _SplashState();
// }
//
// class _SplashState extends State<Splash> {
//   @override
//   void initState(){
//     super.initState();
//       _navigatetohome();
//   }
//   _navigatetohome()async{
//     await Future.delayed(Duration(milliseconds: 2000), () {});
//     Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>Dashboard(title:"Sign Guide")));
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.blueAccent,
//       body: Center(
//         child: Container(
//           child: Text('Sign Guide ',
//           style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold, backgroundColor: Colors.lightBlueAccent,),
//           ),
//         ),
//       ),
//     );
//   }
// }

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
        MaterialPageRoute(builder: (context) => Dashboard(title: 'Sign Guide',)), // replace with actual widget for dashboard screen
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Sign Guide',
              style: TextStyle(
                fontSize: 24.0,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            SizedBox(height: 16.0),
            Image.asset(
              'assets/images/logo.jpg',
              height: 200.0,
              width: 200.0,
            ),
          ],
        ),
      ),
    );
  }
}
