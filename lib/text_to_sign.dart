import 'package:flutter/material.dart';
import 'dashboard.dart';
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
