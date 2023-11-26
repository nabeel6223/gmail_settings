import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:gmail_settings/color_picker.dart';
import 'package:gmail_settings/text-style.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_colorpicker/flutter_colorpicker.dart';

List<String> languages = ["12313", "qwqew1212qeq", "mnm121212n", "qwqwqw"];

class ColorPicker1 extends StatefulWidget {
  ColorPicker1(this.pickerColor, {super.key});
  Color pickerColor = Color(0xff443a49);

  State<ColorPicker1> createState() {
    return _ColorPicker1();
  }
}

class _ColorPicker1 extends State<ColorPicker1> {
  // create some values
  // Color pickerColor = Color(0xff443a49);
  late Color currentColor;
  @override
  void initState() {
    // TODO: implement initState
    currentColor = widget.pickerColor;

    // super.initState();
  }

// ValueChanged<Color> callback
  void changeColor(Color color) {
    setState(() => widget.pickerColor = color);
  }

  // String _selectedlang = "12313";
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      child: AlertDialog(
        title: const Text('Pick a color!'),
        content: SingleChildScrollView(
          child: ColorPicker(
            pickerColor: widget.pickerColor,
            onColorChanged: changeColor,
          ),
          // Use Material color picker:
          //
          // child: MaterialPicker(
          //   pickerColor: pickerColor,
          //   onColorChanged: changeColor,
          //   showLabel: true, // only on portrait mode
          // ),
          //
          // Use Block color picker:
          //
          // child: BlockPicker(
          //   pickerColor: currentColor,
          //   onColorChanged: changeColor,
          // ),
          //
          // child: MultipleChoiceBlockPicker(
          //   pickerColors: currentColors,
          //   onColorsChanged: changeColors,
          // ),
        ),
        actions: <Widget>[
          ElevatedButton(
            child: const Text('Got it'),
            onPressed: () {
              setState(() => currentColor = widget.pickerColor);
              Navigator.of(context).pop(currentColor);
            },
          ),
        ],
      ),
    );
  }
}
