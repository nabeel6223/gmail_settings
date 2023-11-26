import 'package:flutter/material.dart';

import 'package:url_launcher/url_launcher.dart';

launchURL() async {
  final Uri url = Uri.parse('https://myaccount.google.com/language');
  if (!await launchUrl(url)) {
    throw Exception('Could not launch $url');
  }
}

List<String> languages = [
  "Amharic",
  "Arabic",
  "Basque",
  "Bengali",
  "English (UK)",
  "Portuguese (Brazil)",
  "Bulgarian",
  "Catalan",
  "Czech",
  "Cheroke",
  "Croatian",
  "Danish",
  "Dutch",
  "English (US)",
  "Estonian",
  "Filipino",
  "Finnish",
  "French",
  "German",
  "Greek",
  "Gujarati",
  "Hebrew",
  "Hindi",
  "Hungarian",
  "Icelandic",
  "Indonesian",
  "Italian",
  "Japanese",
  "Kannada",
  "Korean",
  "Latvian",
  "Lithuanian",
  "Malay",
  "Malayalam",
  "Marathi",
  "Norwegian",
  "Polish",
  "Portuguese (Portugal)",
  "Romanian",
  "Russian",
  "Serbian",
  "Chinese (PRC)",
  "Slovak",
  "Slovenian",
  "Spanish",
  "Swahili",
  "Swedish",
  "Tamil",
  "Telugu",
  "Thai",
  "Chinese (Taiwan)",
  "Turkish",
  "Urdu",
  "Ukrainian",
  "Vietnamese",
  "Welsh"
];

class Language extends StatefulWidget {
  Language({super.key});

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _Language();
  }
}

class _Language extends State<Language> {
  bool alllanguage = false;
  String _selectedlang = "English (US)";
  bool langCheck = false;
  void checkLan(bool var1) {
    setState(() {
      if (var1)
        langCheck = false;
      else
        langCheck = true;
    });
  }

  bool supOn1 = true;
  bool supOn2 = false;
  void supOnFunc(String str) {
    setState(() {
      if (str == "one") {
        if (!supOn1) {
          supOn1 = true;
          supOn2 = false;
        }
      } else {
        if (!supOn2) {
          supOn1 = false;
          supOn2 = true;
        }
      }
    });
  }

  void showAllOptions() {
    setState(() {
      alllanguage = true;
    });
  }

  Color getColor(Set<MaterialState> states) {
    const Set<MaterialState> interactiveStates = <MaterialState>{
      MaterialState.pressed,
      MaterialState.hovered,
      MaterialState.focused,
    };

    if (langCheck) return Colors.blue;
    return Colors.white;

    // return Colors.blue;
  }

  Color getColor1(Set<MaterialState> states) {
    const Set<MaterialState> interactiveStates = <MaterialState>{
      MaterialState.pressed,
    };
    if (supOn1) return Colors.blue;
    return Colors.white;

    // return Colors.blue;
  }

  Color getColor2(Set<MaterialState> states) {
    const Set<MaterialState> interactiveStates = <MaterialState>{
      MaterialState.pressed,
    };
    if (supOn2) return Colors.blue;
    return Colors.white;

    // return Colors.blue;
  }

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
              "Language:",
              style: TextStyle(fontWeight: FontWeight.w700),
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width * 0.8 - 96,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Text(
                      "Gmail Display Language:",
                      style: TextStyle(fontWeight: FontWeight.w700),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 5.0),
                      child: DropdownButtonFormField(
                          decoration: const InputDecoration(
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.black),
                              borderRadius: BorderRadius.all(
                                Radius.circular(0.0),
                              ),
                            ),
                            contentPadding: EdgeInsets.all(4),
                            isDense: true,
                            constraints:
                                BoxConstraints(maxWidth: 400, maxHeight: 50),
                            border: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.black),
                              borderRadius: BorderRadius.all(
                                Radius.circular(0.0),
                              ),
                            ),
                          ),
                          // hint: Icon(Icons.text_fields_rounded),
                          items: languages.map((item) {
                            return DropdownMenuItem(
                                value: item,
                                child: Text(
                                  item,
                                  style: TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w500),
                                ));
                          }).toList(),
                          value: _selectedlang,
                          onChanged: (value) {
                            if (value == null) return;
                            setState(() {
                              _selectedlang = value.toString();
                            });
                          }),
                    ),
                    InkWell(
                      onTap: () {
                        launchURL();
                      },
                      child: const Padding(
                        padding: const EdgeInsets.only(left: 5.0),
                        child: Text(
                          "Change language settings for other Google products",
                          style: TextStyle(color: Colors.blue),
                        ),
                      ),
                    )
                  ],
                ),
                if (!alllanguage)
                  InkWell(
                    onTap: () {
                      showAllOptions();
                    },
                    child: const Padding(
                      padding: const EdgeInsets.only(left: 0),
                      child: Text(
                        "Show all language Options",
                        style: TextStyle(color: Colors.blue),
                      ),
                    ),
                  )
                else
                  Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.fromLTRB(0, 20, 0, 20),
                        child: Row(
                          children: [
                            Checkbox(
                              side: BorderSide(color: Colors.black),
                              checkColor: Colors.white,
                              fillColor:
                                  MaterialStateColor.resolveWith(getColor),
                              value: langCheck,
                              onChanged: (bool? value) {
                                setState(() {
                                  checkLan(langCheck);
                                });
                              },
                            ),
                            const Text(
                              "Enable Input Tools",
                              style: TextStyle(fontWeight: FontWeight.w700),
                            ),
                            const Text(
                              " - Use various text input tools to type in the language of your choice",
                              style: TextStyle(color: Colors.black),
                            ),
                          ],
                        ),
                      ),
                      Row(
                        children: [
                          Checkbox(
                            shape: CircleBorder(),
                            side: BorderSide(color: Colors.black),
                            checkColor: Colors.blue,
                            fillColor:
                                MaterialStateColor.resolveWith(getColor1),
                            value: supOn1,
                            onChanged: (bool? value) {
                              setState(() {
                                supOnFunc("one");
                              });
                            },
                          ),
                          Text(
                            "Right-to-left editing support off",
                            style: TextStyle(fontWeight: FontWeight.w700),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Checkbox(
                            shape: CircleBorder(),
                            side: BorderSide(color: Colors.black),
                            checkColor: Colors.blue,
                            fillColor:
                                MaterialStateColor.resolveWith(getColor2),
                            value: supOn2,
                            onChanged: (bool? value) {
                              setState(() {
                                supOnFunc("two");
                              });
                            },
                          ),
                          Text(
                            "Right-to-left editing support on",
                            style: TextStyle(fontWeight: FontWeight.w700),
                          ),
                        ],
                      ),
                    ],
                  )
              ],
            ),
          )
        ],
      ),
    );
  }
}
