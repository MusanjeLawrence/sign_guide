import 'package:flutter/material.dart';
import 'main.dart';
import 'splash.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({Key? key, required String title}) : super(key: key);

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Welcome to Sign Guide"),),
      body: Container(child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: GridView(children: [
          Container( decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: Colors.lightBlueAccent),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
              Icon(Icons.sign_language, size: 50, color: Colors.white,),
              Text("Text to Sign", style: TextStyle(color: Colors.white, fontSize: 30),)
            ],),
          ), Container( decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: Colors.lightBlueAccent),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
              Icon(Icons.camera_alt_rounded, size: 50, color: Colors.white,),
              Text("Image to Sign", style: TextStyle(color: Colors.white, fontSize: 30),)
            ],),
          ),
          Container( decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: Colors.lightBlueAccent),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.keyboard_voice, size: 50, color: Colors.white,),
                Text("Voice to Sign", style: TextStyle(color: Colors.white, fontSize: 30),)
              ],),
          ),
          Container( decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: Colors.lightBlueAccent),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.text_fields_outlined, size: 50, color: Colors.white,),
                Text("Sign to Text", style: TextStyle(color: Colors.white, fontSize: 30),)
              ],),
          ),
          Container( decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: Colors.lightBlueAccent),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.menu_book_rounded, size: 50, color: Colors.white,),
                Text("Learn", style: TextStyle(color: Colors.white, fontSize: 30),)
              ],),
          ),
          Container( decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: Colors.lightBlueAccent),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.diamond_rounded, size: 50, color: Colors.white,),
                Text("Treasure", style: TextStyle(color: Colors.white, fontSize: 30),)
              ],),
          ),

        ],
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2, mainAxisSpacing: 10, crossAxisSpacing: 10),
        ),
      )),
    );
  }
}
