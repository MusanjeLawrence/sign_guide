import 'package:flutter/material.dart';
import 'dashboard.dart';
import 'main.dart';


class Text_to_Sign extends StatefulWidget {
  const Text_to_Sign({Key? key}) : super(key: key);

  @override
  State<Text_to_Sign> createState() => _Text_to_SignState();
}

class _Text_to_SignState extends State<Text_to_Sign> {
  //controller to get what user has entered and keep track of it


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              decoration: InputDecoration(
                  hintText: 'Enter Text Here',
                  border: OutlineInputBorder()),
            ),
          ],
        ),
      ),
    );
  }
}
