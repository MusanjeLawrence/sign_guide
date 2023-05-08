import 'package:flutter/material.dart';
import 'main.dart';

class Sign_To_Text extends StatefulWidget {
  const Sign_To_Text({Key? key}) : super(key: key);

  @override
  State<Sign_To_Text> createState() => _Sign_To_TextState();
}

class _Sign_To_TextState extends State<Sign_To_Text> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Text("Sign to text page"),
      ),
    );
  }
}
