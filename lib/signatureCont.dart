import 'package:flutter/material.dart';
import 'package:gmail_settings/signature.dart';

class SignContainer extends StatefulWidget {
  SignContainer({super.key});

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _SignContainer();
  }
}

class _SignContainer extends State<SignContainer> {
  // bool allSignContainer = false;
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
              "Signature:",
              style: TextStyle(fontWeight: FontWeight.w700),
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width * 0.8 - 96,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [Container(child: Signature())],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
