import 'package:flutter/material.dart';
import 'package:sign_guide/settings.dart';
import 'package:sign_guide/share.dart';
import 'package:sign_guide/sign_to_text.dart';
import 'package:sign_guide/text_to_sign.dart';
import 'package:sign_guide/treasure.dart';
import 'package:sign_guide/voice_to_sign.dart';
import 'alphabets.dart';
import 'dashboard.dart';
import 'image_to_sign.dart';

class Learn extends StatefulWidget {
  const Learn({Key? key}) : super(key: key);

  @override
  State<Learn> createState() => _LearnState();
}

class _LearnState extends State<Learn> {


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
         title: Text("Learn Sign Language"),
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

      //creating flutter cards to contain links to learn content
      body: Container(
          child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: GridView(children: [
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Alphabets()),
              );
            },
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.lightBlueAccent,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.sort_by_alpha_rounded, size: 50, color: Colors.white),
                  Text(
                    "Alphabets",
                    style: TextStyle(color: Colors.white, fontSize: 24),
                  ),
                ],
              ),
            ),
          ), GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Text_to_Sign()),
              );
            },
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.lightBlueAccent,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.numbers_rounded, size: 50, color: Colors.white),
                  Text(
                    "Numbers",
                    style: TextStyle(color: Colors.white, fontSize: 24),
                  ),
                ],
              ),
            ),
          ), GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Text_to_Sign()),
              );
            },
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.lightBlueAccent,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.color_lens_rounded, size: 50, color: Colors.white),
                  Text(
                    "Colors",
                    style: TextStyle(color: Colors.white, fontSize: 24),
                  ),
                ],
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Text_to_Sign()),
              );
            },
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.lightBlueAccent,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.handshake_rounded, size: 50, color: Colors.white),
                  Text(
                    "Greetings",
                    style: TextStyle(color: Colors.white, fontSize: 24),
                  ),
                ],
              ),
            ),
          ), GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Text_to_Sign()),
              );
            },
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.lightBlueAccent,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.question_mark_rounded, size: 50, color: Colors.white),
                  Text(
                    "Questions",
                    style: TextStyle(color: Colors.white, fontSize: 24),
                  ),
                ],
              ),
            ),
          ), GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Text_to_Sign()),
              );
            },
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.lightBlueAccent,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.family_restroom_rounded, size: 50, color: Colors.white),
                  Text(
                    "Family",
                    style: TextStyle(color: Colors.white, fontSize: 24),
                  ),
                ],
              ),
            ),
          ), GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Text_to_Sign()),
              );
            },
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.lightBlueAccent,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.calendar_month_rounded, size: 50, color: Colors.white),
                  Text(
                    "Calendar",
                    style: TextStyle(color: Colors.white, fontSize: 24),
                  ),
                ],
              ),
            ),
          ), GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Text_to_Sign()),
              );
            },
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.lightBlueAccent,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.sunny, size: 50, color: Colors.white),
                  Text(
                    "Weather",
                    style: TextStyle(color: Colors.white, fontSize: 24),
                  ),
                ],
              ),
            ),
          ),
        ],
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2, mainAxisSpacing: 10, crossAxisSpacing: 10),
        ),
      )),

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
    );
  }
}
