import 'package:flutter/material.dart';
import 'main.dart';
import 'learn.dart';
import 'dashboard.dart';

class Alphabets extends StatefulWidget {
  const Alphabets({Key? key}) : super(key: key);

  @override
  State<Alphabets> createState() => _AlphabetsState();
}

class _AlphabetsState extends State<Alphabets> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Learn Alphabets',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Learn Alphabets'),
        ),
        body: Center(
          child: Card(
            child: Row(
              children: [
                Container(
                  width: 50,
                  height: 50,
                  color: Colors.blue,
                  alignment: Alignment.center,
                  child: Text(
                    "A",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    height: 150,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage("assets/images/A.jpg"),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
