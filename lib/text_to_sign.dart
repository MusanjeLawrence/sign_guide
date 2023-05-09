import 'package:flutter/material.dart';
import 'package:sign_guide/settings.dart';
import 'package:sign_guide/share.dart';
import 'package:sign_guide/sign_to_text.dart';
import 'package:sign_guide/treasure.dart';
import 'package:sign_guide/voice_to_sign.dart';
import 'dashboard.dart';
import 'image_to_sign.dart';
import 'learn.dart';
import 'main.dart';


class Text_to_Sign extends StatefulWidget {
  const Text_to_Sign({Key? key}) : super(key: key);

  @override
  State<Text_to_Sign> createState() => _Text_to_SignState();
}

class _Text_to_SignState extends State<Text_to_Sign> {
  //controller to keep track of what user is typing
  final _textController = TextEditingController();
  //storing the user input text into a variable
  String userInput = '';

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
        title: Text("Text To Sign Language"),

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
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

          //text input in the text field code
            TextField(
              controller: _textController,
              decoration: InputDecoration(
                  hintText: 'Enter Text Here',
                  border: const OutlineInputBorder(),
              suffixIcon: IconButton(
                  onPressed: (){
                    //clear everything in the text field
                    _textController.clear();
                  },
                  icon: const Icon(Icons.clear),
              ),
              ),
            ),

            //translate button
            MaterialButton(
                onPressed: (){
                  //update string variable to get the user input\
                  setState(() {
                    userInput = _textController.text;
                  });
                },
              color: Colors.blueAccent,
              child: const Text('Translate',
              style: TextStyle(
                  color: Colors.white,
              ),
              ),
            ),
            //dislaying text that user typed in code
            Expanded(
              child: Container(
                child: Center(
                  child: Text(userInput,
                      style: TextStyle(
                        fontSize: 35,
                      )),
                ),
              ),
            ),

          ],
        ),
      ),
    );
  }
}
