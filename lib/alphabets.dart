import 'package:flutter/material.dart';
import 'package:sign_guide/settings.dart';
import 'package:sign_guide/share.dart';
import 'package:sign_guide/sign_to_text.dart';
import 'package:sign_guide/text_to_sign.dart';
import 'package:sign_guide/treasure.dart';
import 'package:sign_guide/voice_to_sign.dart';
import 'image_to_sign.dart';
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
    return Scaffold(
      appBar: AppBar(
        leading: Builder(
          builder: (BuildContext context) {
            return IconButton(
              icon: const Icon(Icons.menu),
              onPressed: () => Scaffold.of(context).openDrawer(),
            );
          },
        ),
        title: Text("Learn Alphabets"),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              child: Text('Sign Guide App '),
              decoration: BoxDecoration(
                color: Colors.blueAccent,
              ),
            ),
            ListTile(
              leading: Icon(Icons.home),
              title: Text('Home'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => Dashboard(title: 'sign guide')),
                );
              },
            ),
            ListTile(
              leading: Icon(Icons.sign_language),
              title: Text('Text To Sign'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Text_to_Sign()),
                );
              },
            ),
            ListTile(
              leading: Icon(Icons.camera_alt_rounded),
              title: Text('Image To Text'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Image_To_Sign()),
                );
              },
            ),
            ListTile(
              leading: Icon(Icons.keyboard_voice),
              title: Text('Voice To Sign'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Voice_To_Sign()),
                );
              },
            ),
            ListTile(
              leading: Icon(Icons.text_fields_outlined),
              title: Text('Sign To Text'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Sign_To_Text()),
                );
              },
            ),
            ListTile(
              leading: Icon(Icons.menu_book_rounded),
              title: Text('Learn'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Learn()),
                );
              },
            ),
            ListTile(
              leading: Icon(Icons.diamond_rounded),
              title: Text('Treasure'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Treasure()),
                );
              },
            ),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text('Settings'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Settings()),
                );
              },
            ),
            ListTile(
              leading: Icon(Icons.share),
              title: Text('Share'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Share()),
                );
              },
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(14, 8, 14, 2),
                child: Card(
                  child: Row(
                    children: [
                      Container(
                        width: 160,
                        height: 80,
                        color: Colors.white,
                        alignment: Alignment.center,
                        child: Text(
                          "A",
                          style: TextStyle(
                            color: Colors.blue,
                            fontSize: 80,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      Expanded(
                        child: Container(
                          height: 120,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage("assets/images/A.jpg"),
                              fit: BoxFit.contain,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(14, 5, 14, 2),
                child: Card(
                  child: Row(
                    children: [
                      Container(
                        width: 160,
                        height: 80,
                        color: Colors.white,
                        alignment: Alignment.center,
                        child: Text(
                          "B",
                          style: TextStyle(
                            color: Colors.blue,
                            fontSize: 80,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      Expanded(
                        child: Container(
                          height: 120,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage("assets/images/B.jpg"),
                              fit: BoxFit.contain,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(14, 5, 14, 2),
                child: Card(
                  child: Row(
                    children: [
                      Container(
                        width: 160,
                        height: 80,
                        color: Colors.white,
                        alignment: Alignment.center,
                        child: Text(
                          "C",
                          style: TextStyle(
                            color: Colors.blue,
                            fontSize: 80,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      Expanded(
                        child: Container(
                          height: 120,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage("assets/images/C.jpg"),
                              fit: BoxFit.contain,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(14, 5, 14, 2),
                child: Card(
                  child: Row(
                    children: [
                      Container(
                        width: 160,
                        height: 80,
                        color: Colors.white,
                        alignment: Alignment.center,
                        child: Text(
                          "D",
                          style: TextStyle(
                            color: Colors.blue,
                            fontSize: 80,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      Expanded(
                        child: Container(
                          height: 120,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage("assets/images/D.jpg"),
                              fit: BoxFit.contain,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(14, 5, 14, 2),
                child: Card(
                  child: Row(
                    children: [
                      Container(
                        width: 160,
                        height: 80,
                        color: Colors.white,
                        alignment: Alignment.center,
                        child: Text(
                          "E",
                          style: TextStyle(
                            color: Colors.blue,
                            fontSize: 80,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      Expanded(
                        child: Container(
                          height: 120,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage("assets/images/E.jpg"),
                              fit: BoxFit.contain,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(14, 5, 14, 2),
                child: Card(
                  child: Row(
                    children: [
                      Container(
                        width: 160,
                        height: 80,
                        color: Colors.white,
                        alignment: Alignment.center,
                        child: Text(
                          "F",
                          style: TextStyle(
                            color: Colors.blue,
                            fontSize: 80,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      Expanded(
                        child: Container(
                          height: 120,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage("assets/images/F.jpg"),
                              fit: BoxFit.contain,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(14, 5, 14, 2),
                child: Card(
                  child: Row(
                    children: [
                      Container(
                        width: 160,
                        height: 80,
                        color: Colors.white,
                        alignment: Alignment.center,
                        child: Text(
                          "G",
                          style: TextStyle(
                            color: Colors.blue,
                            fontSize: 80,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      Expanded(
                        child: Container(
                          height: 120,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage("assets/images/G.jpg"),
                              fit: BoxFit.contain,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(14, 5, 14, 2),
                child: Card(
                  child: Row(
                    children: [
                      Container(
                        width: 160,
                        height: 80,
                        color: Colors.white,
                        alignment: Alignment.center,
                        child: Text(
                          "H",
                          style: TextStyle(
                            color: Colors.blue,
                            fontSize: 80,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      Expanded(
                        child: Container(
                          height: 120,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage("assets/images/H.jpg"),
                              fit: BoxFit.contain,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(14, 5, 14, 2),
                child: Card(
                  child: Row(
                    children: [
                      Container(
                        width: 160,
                        height: 80,
                        color: Colors.white,
                        alignment: Alignment.center,
                        child: Text(
                          "I",
                          style: TextStyle(
                            color: Colors.blue,
                            fontSize: 80,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      Expanded(
                        child: Container(
                          height: 120,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage("assets/images/I.jpg"),
                              fit: BoxFit.contain,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(14, 5, 14, 2),
                child: Card(
                  child: Row(
                    children: [
                      Container(
                        width: 160,
                        height: 80,
                        color: Colors.white,
                        alignment: Alignment.center,
                        child: Text(
                          "J",
                          style: TextStyle(
                            color: Colors.blue,
                            fontSize: 80,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      Expanded(
                        child: Container(
                          height: 120,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage("assets/images/J.jpg"),
                              fit: BoxFit.contain,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(14, 5, 14, 2),
                child: Card(
                  child: Row(
                    children: [
                      Container(
                        width: 160,
                        height: 80,
                        color: Colors.white,
                        alignment: Alignment.center,
                        child: Text(
                          "K",
                          style: TextStyle(
                            color: Colors.blue,
                            fontSize: 80,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      Expanded(
                        child: Container(
                          height: 120,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage("assets/images/K.jpg"),
                              fit: BoxFit.contain,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(14, 5, 14, 2),
                child: Card(
                  child: Row(
                    children: [
                      Container(
                        width: 160,
                        height: 80,
                        color: Colors.white,
                        alignment: Alignment.center,
                        child: Text(
                          "L",
                          style: TextStyle(
                            color: Colors.blue,
                            fontSize: 80,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      Expanded(
                        child: Container(
                          height: 120,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage("assets/images/L.jpg"),
                              fit: BoxFit.contain,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(14, 5, 14, 2),
                child: Card(
                  child: Row(
                    children: [
                      Container(
                        width: 160,
                        height: 80,
                        color: Colors.white,
                        alignment: Alignment.center,
                        child: Text(
                          "M",
                          style: TextStyle(
                            color: Colors.blue,
                            fontSize: 80,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      Expanded(
                        child: Container(
                          height: 120,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage("assets/images/M.jpg"),
                              fit: BoxFit.contain,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(14, 5, 14, 2),
                child: Card(
                  child: Row(
                    children: [
                      Container(
                        width: 160,
                        height: 80,
                        color: Colors.white,
                        alignment: Alignment.center,
                        child: Text(
                          "N",
                          style: TextStyle(
                            color: Colors.blue,
                            fontSize: 80,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      Expanded(
                        child: Container(
                          height: 120,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage("assets/images/N.jpg"),
                              fit: BoxFit.contain,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(14, 5, 14, 2),
                child: Card(
                  child: Row(
                    children: [
                      Container(
                        width: 160,
                        height: 80,
                        color: Colors.white,
                        alignment: Alignment.center,
                        child: Text(
                          "O",
                          style: TextStyle(
                            color: Colors.blue,
                            fontSize: 80,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      Expanded(
                        child: Container(
                          height: 120,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage("assets/images/O.jpg"),
                              fit: BoxFit.contain,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(14, 5, 14, 2),
                child: Card(
                  child: Row(
                    children: [
                      Container(
                        width: 160,
                        height: 80,
                        color: Colors.white,
                        alignment: Alignment.center,
                        child: Text(
                          "P",
                          style: TextStyle(
                            color: Colors.blue,
                            fontSize: 80,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      Expanded(
                        child: Container(
                          height: 120,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage("assets/images/P.jpg"),
                              fit: BoxFit.contain,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(14, 5, 14, 2),
                child: Card(
                  child: Row(
                    children: [
                      Container(
                        width: 160,
                        height: 80,
                        color: Colors.white,
                        alignment: Alignment.center,
                        child: Text(
                          "Q",
                          style: TextStyle(
                            color: Colors.blue,
                            fontSize: 80,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      Expanded(
                        child: Container(
                          height: 120,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage("assets/images/Q.jpg"),
                              fit: BoxFit.contain,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(14, 5, 14, 2),
                child: Card(
                  child: Row(
                    children: [
                      Container(
                        width: 160,
                        height: 80,
                        color: Colors.white,
                        alignment: Alignment.center,
                        child: Text(
                          "R",
                          style: TextStyle(
                            color: Colors.blue,
                            fontSize: 80,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      Expanded(
                        child: Container(
                          height: 120,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage("assets/images/R.jpg"),
                              fit: BoxFit.contain,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(14, 5, 14, 2),
                child: Card(
                  child: Row(
                    children: [
                      Container(
                        width: 160,
                        height: 80,
                        color: Colors.white,
                        alignment: Alignment.center,
                        child: Text(
                          "S",
                          style: TextStyle(
                            color: Colors.blue,
                            fontSize: 80,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      Expanded(
                        child: Container(
                          height: 120,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage("assets/images/S.jpg"),
                              fit: BoxFit.contain,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(14, 5, 14, 2),
                child: Card(
                  child: Row(
                    children: [
                      Container(
                        width: 160,
                        height: 80,
                        color: Colors.white,
                        alignment: Alignment.center,
                        child: Text(
                          "T",
                          style: TextStyle(
                            color: Colors.blue,
                            fontSize: 80,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      Expanded(
                        child: Container(
                          height: 120,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage("assets/images/T.jpg"),
                              fit: BoxFit.contain,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(14, 5, 14, 2),
                child: Card(
                  child: Row(
                    children: [
                      Container(
                        width: 160,
                        height: 80,
                        color: Colors.white,
                        alignment: Alignment.center,
                        child: Text(
                          "U",
                          style: TextStyle(
                            color: Colors.blue,
                            fontSize: 80,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      Expanded(
                        child: Container(
                          height: 120,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage("assets/images/U.jpg"),
                              fit: BoxFit.contain,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(14, 5, 14, 2),
                child: Card(
                  child: Row(
                    children: [
                      Container(
                        width: 160,
                        height: 80,
                        color: Colors.white,
                        alignment: Alignment.center,
                        child: Text(
                          "V",
                          style: TextStyle(
                            color: Colors.blue,
                            fontSize: 80,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      Expanded(
                        child: Container(
                          height: 120,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage("assets/images/V.jpg"),
                              fit: BoxFit.contain,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(14, 5, 14, 2),
                child: Card(
                  child: Row(
                    children: [
                      Container(
                        width: 160,
                        height: 80,
                        color: Colors.white,
                        alignment: Alignment.center,
                        child: Text(
                          "W",
                          style: TextStyle(
                            color: Colors.blue,
                            fontSize: 80,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      Expanded(
                        child: Container(
                          height: 120,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage("assets/images/W.jpg"),
                              fit: BoxFit.contain,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(14, 5, 14, 2),
                child: Card(
                  child: Row(
                    children: [
                      Container(
                        width: 160,
                        height: 80,
                        color: Colors.white,
                        alignment: Alignment.center,
                        child: Text(
                          "X",
                          style: TextStyle(
                            color: Colors.blue,
                            fontSize: 80,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      Expanded(
                        child: Container(
                          height: 120,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage("assets/images/X.jpg"),
                              fit: BoxFit.contain,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(14, 5, 14, 2),
                child: Card(
                  child: Row(
                    children: [
                      Container(
                        width: 160,
                        height: 80,
                        color: Colors.white,
                        alignment: Alignment.center,
                        child: Text(
                          "Y",
                          style: TextStyle(
                            color: Colors.blue,
                            fontSize: 80,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      Expanded(
                        child: Container(
                          height: 120,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage("assets/images/Y.jpg"),
                              fit: BoxFit.contain,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(14, 5, 14, 2),
                child: Card(
                  child: Row(
                    children: [
                      Container(
                        width: 160,
                        height: 80,
                        color: Colors.white,
                        alignment: Alignment.center,
                        child: Text(
                          "Z",
                          style: TextStyle(
                            color: Colors.blue,
                            fontSize: 80,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      Expanded(
                        child: Container(
                          height: 120,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage("assets/images/Z.jpg"),
                              fit: BoxFit.contain,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
