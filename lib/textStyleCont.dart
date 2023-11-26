import 'package:flutter/material.dart';
import 'package:gmail_settings/signature.dart';
import 'package:gmail_settings/text-style.dart';

class TextStyleContainer extends StatefulWidget {
  TextStyleContainer({super.key});

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _TextStyleContainer();
  }
}

class _TextStyleContainer extends State<TextStyleContainer> {
  // bool allTextStyleContainer = false;
  // String _selectedlang = "India";

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(8, 20, 8, 20),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: MediaQuery.of(context).size.width * 0.2 - 96,
            child: Text(
              "Default Text Styling:",
              style: TextStyle(fontWeight: FontWeight.w700),
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width * 0.8 - 96,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [Container(child: TextStyling())],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
