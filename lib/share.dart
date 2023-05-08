import 'package:flutter/material.dart';
import 'main.dart';

class Share extends StatefulWidget {
  const Share({Key? key}) : super(key: key);

  @override
  State<Share> createState() => _ShareState();
}

class _ShareState extends State<Share> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Text("Share page"),
      ),
    );
  }
}
