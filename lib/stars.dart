import 'package:flutter/material.dart';
import 'package:gmail_settings/drag_stars.dart';

// List<String> Starss = [];

class Stars extends StatefulWidget {
  Stars({super.key});

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _Stars();
  }
}

class _Stars extends State<Stars> {
  // bool allStars = false;
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
            child: const Text(
              "Stars:",
              style: TextStyle(fontWeight: FontWeight.w700),
            ),
          ),
          Container(
            // decoration: BoxDecoration(color: Colors.red),
            width: MediaQuery.of(context).size.width * 0.8,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Expanded(
                      child: RichText(
                          text: const TextSpan(
                              text: "Drag the stars between the lists.",
                              style: TextStyle(fontWeight: FontWeight.w700),
                              children: [
                            TextSpan(
                                text:
                                    " The stars will rotate in the order shown below when you click successively. To learn the name of a star for search, hover your mouse over the image.",
                                style: TextStyle(fontWeight: FontWeight.w400))
                          ])),
                    )
                  ],
                ),
                MultiBoardListExample(),
              ],
            ),
          )
        ],
      ),
    );
  }
}
