import 'package:flutter/material.dart';
import 'package:sign_guide/settings.dart';
import 'package:sign_guide/share.dart';
import 'package:sign_guide/sign_to_text.dart';
import 'package:sign_guide/text_to_sign.dart';
import 'package:sign_guide/treasure.dart';
import 'package:sign_guide/voice_to_sign.dart';
import 'image_to_sign.dart';
import 'main.dart';
import 'learn.dart';
import 'dashboard.dart';
import 'drawer.dart';

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
                  MaterialPageRoute(builder: (context) => Dashboard(title: 'sign guide')),
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
              title: Text('Image To Image'),
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
        body: Center(
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

      );
  }
}

class Drawer extends StatelessWidget {
  const Drawer({Key? key, required ListView child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Text('Sign Guide'),
      //   leading: IconButton(
      //     icon: Icon(Icons.menu),
      //     onPressed: () => Scaffold.of(context).openDrawer(),
      //   ),
      // ),
    );
  }
}