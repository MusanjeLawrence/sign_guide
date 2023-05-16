import 'dart:convert';
import 'dart:io';
import 'dart:io' as Io;
import 'dart:typed_data';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:sign_guide/settings.dart';
import 'package:sign_guide/share.dart';
import 'package:sign_guide/sign_to_text.dart';
import 'package:sign_guide/text_to_sign.dart';
import 'package:sign_guide/treasure.dart';
import 'package:sign_guide/voice_to_sign.dart';
import 'apikey.dart';
import 'package:http/http.dart' as http;
import 'dashboard.dart';
import 'learn.dart';
import 'main.dart';

class Image_To_Sign extends StatefulWidget {
  const Image_To_Sign({Key? key}) : super(key: key);

  @override
  State<Image_To_Sign> createState() => _Image_To_SignState();
}

class _Image_To_SignState extends State<Image_To_Sign> {


  int _selectedIndex = 0;

  static const List<Widget> _widgetOptions = <Widget>[
    Text(
      'Home Page',
    ),
    Text(
      'Settings Page',
    ),
    Text(
      'Share Page',
    ),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  //enabling the add file png to open camera and gallery
  File? pickedimage;
  optionsdialog(BuildContext context){
    return showDialog(
      context: context,
      builder: (context){
        return SimpleDialog(
          children: [
            SimpleDialogOption(
              onPressed: () => pickimage(ImageSource.gallery),
              child: Text("Gallery",
              style: TextStyle(
                fontSize: 20,
                color: Colors.black,
                fontWeight: FontWeight.w800
              ),
              ),
            ),
            SimpleDialogOption(
              onPressed: () => pickimage(ImageSource.camera),
              child: Text("Camera",
                style: TextStyle(
                    fontSize: 20,
                    color: Colors.black,
                    fontWeight: FontWeight.w800
                ),
              ),
            ),
            SimpleDialogOption(
              onPressed: ()=> Navigator.pop(context),
              child: Text("Cancel",
                style: TextStyle(
                    fontSize: 20,
                    color: Colors.black,
                    fontWeight: FontWeight.w800
                ),
              ),
            ),
          ],
        );
      },
    );
  }

  pickimage(ImageSource source) async {
    final image = await ImagePicker().pickImage(source: source) as File;
      setState(() {
        pickedimage = File(image.path);
      });
      Navigator.pop(context);

      //prepare the image
    Uint8List bytes = Io.File(pickedimage!.path).readAsBytesSync();
    String img64 = base64Encode(bytes);

    //send to api..ocr
    String url = "https://api.ocr.space/parse/image";
    var data = {"base64Image": "data:image/jpg;base64,$img64"};
    var header = {"apikey": apikey};
    httpResponse response = await http.post(url, body: data, headers: header);

    //get data back
    Map result = jsonDecode(response.body);
    print(result['ParsedResults'][0]['ParsedText']);
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF8F9FB),
      floatingActionButton: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          FloatingActionButton(
            heroTag: null,
            onPressed: () {  },
            child: Icon(Icons.copy, size: 28),
          ),
          SizedBox(width:10 ),
          FloatingActionButton(
            backgroundColor: Color(0xffEC360E),
            heroTag: null,
              onPressed: () {  },
            child: Icon(Icons.reply, size: 34),
          ),
        ],
      ),

      appBar: AppBar(
        leading: Builder(
          builder: (BuildContext context) {
            return IconButton(
              icon: const Icon(Icons.menu),
              onPressed: () => Scaffold.of(context).openDrawer(),
            );
          },
        ),
        title: Text("Image Text To Sign Language"),

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
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Settings',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.share),
            label: 'Share',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.blueAccent,
        onTap: _onItemTapped,
      ),

      //starting code for making picking text from image work
      body: SingleChildScrollView(
        child: Container(
          alignment: Alignment.center,
          child: Column(
            children: [
              SizedBox(
                height: 55 + MediaQuery.of(context).viewInsets.top,
              ),
              Text("Image to Text",
              style: TextStyle(
                fontSize: 35,
                color: Color(0xff1738EB).withOpacity(0.6),
                fontWeight: FontWeight.w800,
              ),
              ),
              SizedBox(
                height: 30,),
              InkWell(
                onTap: () => optionsdialog(context),
                child: Image(
                  width: 150,
                  height: 150,
                  image: pickedimage == null
                      ? AssetImage('assets/images/add_file.png')
                      : Image.file(pickedimage!).image,
                  fit: BoxFit.fill,
                ),

              ),

              SizedBox(height: 30,),
              Text("Select image",
                style: TextStyle(
               fontSize: 25,
                  color: Color(0xff1738EB).withOpacity(0.6),
                fontWeight: FontWeight.w600),),
            ],
          ),
        ),
      ),
    );
  }
}
