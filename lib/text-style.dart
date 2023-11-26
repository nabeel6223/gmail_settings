import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:gmail_settings/color_picker.dart';
import 'package:google_fonts/google_fonts.dart';

List<String> fonts = [
  "Sans Serif",
  "Serif",
  "Fixed Width",
  "Wide",
  "Narrow",
  "Comic Sans MS",
  "Garamond",
  "Georgia",
  "Tahoma",
  "Trebuchet MS",
  "Verdana"
];
List<String> fontSize = ["Small", "Normal", "Large", "Huge"];

class TextStyling extends StatefulWidget {
  const TextStyling({super.key});

  State<TextStyling> createState() {
    return _TextStyling();
  }
}

class _TextStyling extends State<TextStyling> {
  String _selectedfontSize = "Normal";
  Color _selectedColorfromPicker = Colors.black;
  Color selectedColor = Colors.black;
  String _selectedfont = "Sans Serif";
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      decoration: const BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.grey,
            blurRadius: 15.0, // soften the shadow
            spreadRadius: 5.0, //extend the shadow
            offset: Offset(
              5.0, // Move to right 5  horizontally
              5.0, // Move to bottom 5 Vertically
            ),
          )
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                DropdownButton(
                    hint: Text(_selectedfont),
                    items: fonts.map((item) {
                      if (item == "Sans Serif") {
                        return DropdownMenuItem(
                            value: item,
                            child: Row(
                              children: [
                                if (_selectedfont == item) Icon(Icons.check),
                                Text(
                                  item,
                                  style: TextStyle(
                                      fontFamily: 'Arial', fontSize: 14),
                                ),
                              ],
                            ));
                      }
                      if (item == "Serif") {
                        return DropdownMenuItem(
                            value: item,
                            child: Text(
                              item,
                              style: TextStyle(
                                  fontFamily: 'Times New Roman', fontSize: 14),
                            ));
                      }
                      if (item == "Fixed Width") {
                        return DropdownMenuItem(
                            value: item,
                            child: Text(
                              item,
                              style: GoogleFonts.robotoMono(fontSize: 14),
                            ));
                      }
                      if (item == "Wide") {
                        return DropdownMenuItem(
                            value: item,
                            child: Text(
                              item,
                              style: TextStyle(
                                  fontFamily: 'Arial-Black', fontSize: 14),
                            ));
                      }
                      if (item == "Narrow") {
                        return DropdownMenuItem(
                            value: item,
                            child: Text(
                              item,
                              style: TextStyle(
                                  fontFamily: 'Arial-Narrow', fontSize: 14),
                            ));
                      }
                      if (item == "Comic Sans MS") {
                        return DropdownMenuItem(
                            value: item,
                            child: Text(
                              item,
                              style: TextStyle(
                                  fontFamily: 'comic sans ms', fontSize: 14),
                            ));
                      }
                      if (item == "Garamond") {
                        return DropdownMenuItem(
                            value: item,
                            child: Text(
                              item,
                              style: TextStyle(
                                  fontFamily: 'garamond', fontSize: 14),
                            ));
                      }
                      if (item == "Georgia") {
                        return DropdownMenuItem(
                            value: item,
                            child: Text(
                              item,
                              style: TextStyle(
                                  fontFamily: 'georgia', fontSize: 14),
                            ));
                      }
                      if (item == "Tahoma") {
                        return DropdownMenuItem(
                            value: item,
                            child: Text(
                              item,
                              style:
                                  TextStyle(fontFamily: 'tahoma', fontSize: 14),
                            ));
                      }
                      if (item == "Trebuchet MS") {
                        return DropdownMenuItem(
                            value: item,
                            child: Text(
                              item,
                              style: TextStyle(
                                  fontFamily: 'trebuchet ms', fontSize: 14),
                            ));
                      } else {
                        return DropdownMenuItem(
                            value: item,
                            child: Text(
                              item,
                              style: TextStyle(
                                  fontFamily: 'verdana', fontSize: 14),
                            ));
                      }
                    }).toList(),
                    // value: _selectedfont,
                    onChanged: (value) {
                      if (value == null) return;
                      setState(() {
                        _selectedfont = value.toString();
                      });
                    }),
                Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: DropdownButton(
                      hint: Icon(Icons.text_fields_rounded),
                      items: fontSize.map((item) {
                        if (item == "Small") {
                          return DropdownMenuItem(
                              value: item,
                              child: Row(
                                children: [
                                  if (_selectedfontSize == item)
                                    Icon(Icons.check),
                                  Text(
                                    item,
                                    style: TextStyle(fontSize: 10),
                                  ),
                                ],
                              ));
                        }
                        if (item == "Normal") {
                          return DropdownMenuItem(
                              value: item,
                              child: Row(
                                children: [
                                  if (_selectedfontSize == item)
                                    Icon(Icons.check),
                                  Text(
                                    item,
                                    style: TextStyle(fontSize: 13),
                                  ),
                                ],
                              ));
                        }
                        if (item == "Large") {
                          return DropdownMenuItem(
                            value: item,
                            child: Row(
                              children: [
                                if (_selectedfontSize == item)
                                  Icon(Icons.check),
                                Text(
                                  item,
                                  style: TextStyle(fontSize: 18),
                                ),
                              ],
                            ),
                          );
                        } else {
                          return DropdownMenuItem(
                            value: item,
                            child: Row(
                              children: [
                                if (_selectedfontSize == item)
                                  Icon(Icons.check),
                                Text(
                                  item,
                                  style: TextStyle(fontSize: 32),
                                ),
                              ],
                            ),
                          );
                        }
                      }).toList(),
                      // value: _selectedlang,
                      onChanged: (value) {
                        if (value == null) return;
                        setState(() {
                          _selectedfontSize = value.toString();
                        });
                      }),
                ),
                IconButton(
                  icon: Icon(Icons.format_color_text_rounded),
                  onPressed: () async {
                    _selectedColorfromPicker = await showDialog(
                        context: context,
                        builder: (BuildContext context) =>
                            ColorPicker1(_selectedColorfromPicker));
                    setState(() {
                      selectedColor = _selectedColorfromPicker;
                    });
                  },
                ),
                IconButton(
                  icon: Icon(Icons.format_clear_rounded),
                  onPressed: () async {
                    setState(() {
                      selectedColor = Colors.black;
                      _selectedColorfromPicker = Colors.black;
                      _selectedfont = "Sans Serif";
                      _selectedfontSize = "Normal";
                    });
                  },
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10),
              child: Row(mainAxisAlignment: MainAxisAlignment.start, children: [
                if (_selectedfont == "Sans Serif")
                  Text(
                    "This is what your body text will look like.",
                    style: TextStyle(
                      color: selectedColor,
                      fontFamily: 'Arial',
                      fontSize: _selectedfontSize == "Small"
                          ? 10
                          : (_selectedfontSize == "Normal"
                              ? 13
                              : (_selectedfontSize == "Large" ? 18 : 32)),
                    ),
                  ),
                if (_selectedfont == "Serif")
                  Text(
                    "This is what your body text will look like.",
                    style: TextStyle(
                      fontFamily: 'Times new Roman',
                      color: selectedColor,
                      fontSize: _selectedfontSize == "Small"
                          ? 10
                          : (_selectedfontSize == "Normal"
                              ? 13
                              : (_selectedfontSize == "Large" ? 18 : 32)),
                    ),
                  ),
                if (_selectedfont == "Fixed Width")
                  Text(
                    "This is what your body text will look like.",
                    style: GoogleFonts.robotoMono(
                      color: selectedColor,
                      fontSize: _selectedfontSize == "Small"
                          ? 10
                          : (_selectedfontSize == "Normal"
                              ? 13
                              : (_selectedfontSize == "Large" ? 18 : 32)),
                    ),
                  ),
                if (_selectedfont == "Wide")
                  Text(
                    "This is what your body text will look like.",
                    style: TextStyle(
                      fontFamily: 'Arial-Black',
                      color: selectedColor,
                      fontSize: _selectedfontSize == "Small"
                          ? 10
                          : (_selectedfontSize == "Normal"
                              ? 13
                              : (_selectedfontSize == "Large" ? 18 : 32)),
                    ),
                  ),
                if (_selectedfont == "Narrow")
                  Text(
                    "This is what your body text will look like.",
                    style: TextStyle(
                      fontFamily: 'Arial-Narrow',
                      color: selectedColor,
                      fontSize: _selectedfontSize == "Small"
                          ? 10
                          : (_selectedfontSize == "Normal"
                              ? 13
                              : (_selectedfontSize == "Large" ? 18 : 32)),
                    ),
                  ),
                if (_selectedfont == "Comic Sans MS")
                  Text(
                    "This is what your body text will look like.",
                    style: TextStyle(
                      fontFamily: 'comic sans ms',
                      color: selectedColor,
                      fontSize: _selectedfontSize == "Small"
                          ? 10
                          : (_selectedfontSize == "Normal"
                              ? 13
                              : (_selectedfontSize == "Large" ? 18 : 32)),
                    ),
                  ),
                if (_selectedfont == "Garamond")
                  Text(
                    "This is what your body text will look like.",
                    style: TextStyle(
                      fontFamily: 'garamond',
                      color: selectedColor,
                      fontSize: _selectedfontSize == "Small"
                          ? 10
                          : (_selectedfontSize == "Normal"
                              ? 13
                              : (_selectedfontSize == "Large" ? 18 : 32)),
                    ),
                  ),
                if (_selectedfont == "Georgia")
                  Text(
                    "This is what your body text will look like.",
                    style: TextStyle(
                      fontFamily: 'georgia',
                      color: selectedColor,
                      fontSize: _selectedfontSize == "Small"
                          ? 10
                          : (_selectedfontSize == "Normal"
                              ? 13
                              : (_selectedfontSize == "Large" ? 18 : 32)),
                    ),
                  ),
                if (_selectedfont == "Tahoma")
                  Text(
                    "This is what your body text will look like.",
                    style: TextStyle(
                      fontFamily: 'tahoma',
                      color: selectedColor,
                      fontSize: _selectedfontSize == "Small"
                          ? 10
                          : (_selectedfontSize == "Normal"
                              ? 13
                              : (_selectedfontSize == "Large" ? 18 : 32)),
                    ),
                  ),
                if (_selectedfont == "Trebuchet MS")
                  Text(
                    "This is what your body text will look like.",
                    style: TextStyle(
                      fontFamily: 'trebuchet ms',
                      color: selectedColor,
                      fontSize: _selectedfontSize == "Small"
                          ? 10
                          : (_selectedfontSize == "Normal"
                              ? 13
                              : (_selectedfontSize == "Large" ? 18 : 32)),
                    ),
                  ),
                if (_selectedfont == "Verdana")
                  Text(
                    "This is what your body text will look like.",
                    style: TextStyle(
                      fontFamily: 'verdana',
                      color: selectedColor,
                      fontSize: _selectedfontSize == "Small"
                          ? 10
                          : (_selectedfontSize == "Normal"
                              ? 13
                              : (_selectedfontSize == "Large" ? 18 : 32)),
                    ),
                  ),
              ]),
            )
          ],
        ),
      ),
    );
  }
}
