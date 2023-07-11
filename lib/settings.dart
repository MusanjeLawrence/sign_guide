import 'package:flutter/material.dart';
import 'widgets/external_buttons.dart';
import 'package:sign_guide/share.dart';
import 'package:sign_guide/sign_to_text.dart';
import 'package:sign_guide/text_to_sign.dart';
import 'package:sign_guide/treasure.dart';
import 'package:sign_guide/voice_to_sign.dart';
import 'dashboard.dart';
import 'image_to_sign.dart';
import 'learn.dart';

class Settings extends StatefulWidget {
  const Settings({Key? key}) : super(key: key);

  @override
  State<Settings> createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
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
        title: Text("Settings"),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              child: Text('Sign Guide App '),
              decoration: BoxDecoration(
                color: Colors.teal,
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
      backgroundColor: Colors.grey[900],
      body: Column(
        children: [
          SizedBox(
            height: 420,
            width: 500,
            child: Stack(children: const [
              Positioned(
                top: 60,
                left: 20,
                child: Icon(
                  Icons.arrow_back,
                  color: Colors.white,
                  size: 35,
                ),
              ),
              Positioned(
                top: 60,
                left: 370,
                child: Icon(
                  Icons.settings,
                  color: Colors.white,
                  size: 35,
                ),
              ),
              Positioned(
                  top: 90,
                  left: 95,
                  child: CircleAvatar(
                    radius: 120,
                    backgroundImage:
                        AssetImage("assets/images/UserProfile.jpg"),
                  )),
              Positioned(
                  top: 340,
                  left: 110,
                  child: Text(
                    "Prince Bioh",
                    style: TextStyle(
                        fontSize: 35,
                        fontFamily: "Verdana",
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  )),
              Positioned(
                  top: 390,
                  left: 130,
                  child: Text(
                    "princebioh15@gmail.com",
                    style: TextStyle(
                        fontSize: 15,
                        fontFamily: "Calibri",
                        fontStyle: FontStyle.italic,
                        color: Colors.white),
                  )),
            ]),
          ),
          SizedBox(
            height: 512,
            width: 500,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  decoration: BoxDecoration(
                    color: Colors.yellow,
                    borderRadius: BorderRadius.circular(50),
                  ),
                  width: 350,
                  height: 70,
                  alignment: Alignment.center,
                  child: const Text(
                    "Upgrade to Premium",
                    style: TextStyle(
                      fontSize: 23,
                      fontFamily: "Verdana",
                    ),
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                const ExternalButtons(
                  leadingIcon: Icons.shopping_bag_outlined,
                  textButton: "Your Order History",
                  lastIcon: Icons.arrow_forward,
                ),
                const SizedBox(
                  height: 15,
                ),
                const ExternalButtons(
                  leadingIcon: Icons.help_outline_rounded,
                  textButton: "Help and Support",
                  lastIcon: Icons.arrow_forward,
                ),
                const SizedBox(
                  height: 15,
                ),
                const ExternalButtons(
                  leadingIcon: Icons.card_giftcard_outlined,
                  textButton: "Load Gift Voucher",
                  lastIcon: Icons.arrow_forward,
                ),
                const SizedBox(
                  height: 15,
                ),
                const ExternalButtons(
                  leadingIcon: Icons.logout_outlined,
                  textButton: "Logout",
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
