import 'package:flutter/material.dart';
import 'main.dart';

class Voice_To_Sign extends StatefulWidget {
  const Voice_To_Sign({Key? key}) : super(key: key);

  @override
  State<Voice_To_Sign> createState() => _Voice_To_SignState();
}

class _Voice_To_SignState extends State<Voice_To_Sign> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Text("Voice to sign page"),
      ),
    );
  }
}
