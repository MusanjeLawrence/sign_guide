import 'package:flutter/material.dart';
import 'package:sign_guide/splash.dart';
import 'package:sign_guide/dashboard.dart';
import 'package:sign_guide/text_to_sign.dart';
import 'package:sign_guide/voice_to_sign.dart';
import 'image_to_sign.dart';
import 'my_drawer_header.dart';
import 'learn.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Sign Guide',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        
        primarySwatch: Colors.blue,
      ),
      home:Splash(),
    );
  }
}
//creating a navigation drawer
  class Drawer extends StatefulWidget {
    const Drawer({Key? key, required SingleChildScrollView child}) : super(key: key);
  
    @override
    State<Drawer> createState() => _DrawerState();
  }
  
  class _DrawerState extends State<Drawer> {
  var currentPage = DrawerSections.home;
    @override
    Widget build(BuildContext context) {
      var container;
      if(currentPage == DrawerSections.home) {
        container = Dashboard(title: 'Sign Guide',);
      } else if (currentPage == DrawerSections.text_to_sign) {
        container = Text_to_Sign();
      } else if (currentPage == DrawerSections.image_to_sign) {
        container = Image_To_Sign();
      }else if (currentPage == DrawerSections.voice_to_sign) {
        container = Voice_To_Sign();
      }else if (currentPage == DrawerSections.sign_to_text) {
        container = Sign_To_Text();
      } else if (currentPage == DrawerSections.learn) {
        container = Learn();
      } else if (currentPage == DrawerSections.treasure) {
        container = Treasure();
      } else if (currentPage == DrawerSections.settings) {
        container = Settings();
      } else if (currentPage == DrawerSections.share) {
        container = Share();
      }
      return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blueAccent[700],
          title: Text("Sign Guide"),
        ),
        body: Container(
          child: Center(
            child: Text("Home"),
          ),
        ),
        drawer: Drawer(
          child: SingleChildScrollView(
              child: Container(
                child: Column(
                  children: [
                    MyHeaderDrawer(),
                    MyDrawerList(),
                  ],
                ),
              ),
          ),
        ),
      );
    }

    Widget MyDrawerList(){
      return Container(
        padding: EdgeInsets.only(
          top: 15,
        ),
        child: Column(
          //showing the list of the drawer menu
          children: [
            menuItem(1, "Home", Icons.home,
                currentPage == DrawerSections.home ? true:false),
            Divider(),
            menuItem(2, "Text To Sign", Icons.sign_language,
                currentPage == DrawerSections.text_to_sign ? true:false),
            menuItem(3, "Image To Sign", Icons.camera_alt_rounded,
                currentPage == DrawerSections.image_to_sign ? true:false),
            menuItem(4, "Voice To Sign", Icons.keyboard_voice,
                currentPage == DrawerSections.voice_to_sign ? true:false),
            menuItem(5, "Sign To Text", Icons.text_fields_outlined,
                currentPage == DrawerSections.sign_to_text ? true:false),
            menuItem(6, "Learn", Icons.menu_book_rounded,
                currentPage == DrawerSections.learn ? true:false),
            menuItem(7, "Treasure", Icons.diamond_rounded,
                currentPage == DrawerSections.treasure ? true:false),
            Divider(),
            menuItem(8, "Settings", Icons.settings,
                currentPage == DrawerSections.settings ? true:false),
            menuItem(9, "Share", Icons.share,
                currentPage == DrawerSections.share ? true:false),
          ],
        ),
      );
    }
    Widget menuItem(int id, String title, IconData icon, bool selected){
      return Material(
        color: selected ? Colors.blueAccent[300] :  Colors.transparent,
        child: InkWell(
          onTap: (){
            Navigator.pop(context);
            setState(() {
              if(id == 1) {
                currentPage = DrawerSections.home;
              } else if (id == 2) {
                currentPage = DrawerSections.text_to_sign;
              } else if (id == 3) {
                currentPage = DrawerSections.image_to_sign;
              } else if (id == 4) {
                currentPage = DrawerSections.voice_to_sign;
              } else if (id == 5) {
                currentPage = DrawerSections.sign_to_text;
              } else if (id == 6) {
                currentPage = DrawerSections.learn;
              } else if (id == 7) {
                currentPage = DrawerSections.treasure;
              } else if (id == 8) {
                currentPage = DrawerSections.settings;
              } else if (id == 9) {
                currentPage = DrawerSections.share;
              }
            });
          },
          child: Padding(
            padding: EdgeInsets.all(15.0),
            child: Row(
              children: [
                Expanded(
                    child: Icon(
                      icon,
                      size: 20,
                      color: Colors.white,),
                ),
                Expanded(
                  flex: 3,
                  child: Text(
                    title,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
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

  enum DrawerSections{
  home,
  text_to_sign,
  image_to_sign,
  voice_to_sign,
  sign_to_text,
  learn,
  treasure,
  settings,
  share,
  }