import 'package:flutter/material.dart';
import 'main.dart';

class Image_To_Sign extends StatefulWidget {
  const Image_To_Sign({Key? key}) : super(key: key);

  @override
  State<Image_To_Sign> createState() => _Image_To_SignState();
}

class _Image_To_SignState extends State<Image_To_Sign> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Text("Image to sign page"),
      ),
    );
  }
}
