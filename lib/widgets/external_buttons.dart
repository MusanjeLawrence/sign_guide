import 'package:flutter/material.dart';

class ExternalButtons extends StatelessWidget {
  final IconData leadingIcon;
  final String textButton;
  final IconData? lastIcon;

  const ExternalButtons(
      {super.key,
      required this.leadingIcon,
      required this.textButton,
      this.lastIcon});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.grey[700],
        borderRadius: BorderRadius.circular(50),
      ),
      width: 350,
      height: 70,
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 15),
            child: Icon(
              leadingIcon,
              size: 40,
              color: Colors.white,
            ),
          ),
          const SizedBox(
            width: 7,
          ),
          Text(
            textButton,
            style: const TextStyle(
                fontFamily: "Verdana", fontSize: 23, color: Colors.white),
          ),
          const SizedBox(
            width: 5,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 30),
            child: Icon(
              lastIcon,
              size: 30,
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}
