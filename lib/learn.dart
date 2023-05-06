import 'package:flutter/material.dart';
import 'dashboard.dart';
import 'package:sign_guide/main.dart';

class Learn extends StatefulWidget {
  const Learn({super.key});

  @override
  State<Learn> createState() => _LearnState();
}

class _LearnState extends State<Learn> {
  @override
  Widget build(BuildContext context) {
     return Scaffold(
      appBar: AppBar(title: Text("Learn sign Language"),),
      body: Container(child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: GridView(children: [
          Container( decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: Colors.lightBlueAccent),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
              Icon(Icons.sort_by_alpha_rounded, size: 50, color: Colors.white,),
              Text("Alphabets", style: TextStyle(color: Colors.white, fontSize: 22),)
            ],),
          ), Container( decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: Colors.lightBlueAccent),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
              Icon(Icons.numbers_rounded, size: 50, color: Colors.white,),
              Text("Numbers", style: TextStyle(color: Colors.white, fontSize: 22),)
            ],),
          ),
          Container( decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: Colors.lightBlueAccent),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.color_lens_rounded, size: 50, color: Colors.white,),
                Text("Colors", style: TextStyle(color: Colors.white, fontSize: 22),)
              ],),
          ),
          Container( decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: Colors.lightBlueAccent),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.handshake, size: 50, color: Colors.white,),
                Text("Greetings", style: TextStyle(color: Colors.white, fontSize: 22),)
              ],),
          ),
          Container( decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: Colors.lightBlueAccent),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.question_mark_rounded, size: 50, color: Colors.white,),
                Text("Questions", style: TextStyle(color: Colors.white, fontSize: 22),)
              ],),
          ),
          Container( decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: Colors.lightBlueAccent),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.family_restroom_rounded, size: 50, color: Colors.white,),
                Text("Family", style: TextStyle(color: Colors.white, fontSize: 22),)
              ],),
          ),

          Container( decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: Colors.lightBlueAccent),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.calendar_month_rounded, size: 50, color: Colors.white,),
                Text("Calendar", style: TextStyle(color: Colors.white, fontSize: 22),)
              ],),
          ),

          Container( decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: Colors.lightBlueAccent),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.sunny, size: 50, color: Colors.white,),
                Text("Weather", style: TextStyle(color: Colors.white, fontSize: 22),)
              ],),
          ),
        ],
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2, mainAxisSpacing: 10, crossAxisSpacing: 10),
        ),
      )),
    );
  }
}
