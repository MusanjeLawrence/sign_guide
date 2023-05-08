import 'package:flutter/material.dart';
import 'main.dart';

class Treasure extends StatefulWidget {
  const Treasure({Key? key}) : super(key: key);

  @override
  State<Treasure> createState() => _TreasureState();
}

class _TreasureState extends State<Treasure> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Text("Treasure Page"),
      ),
    );
  }
}
