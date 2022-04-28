import 'package:flutter/material.dart';

class CheckBox extends StatefulWidget {
  CheckBox({Key? key, required this.getChbox, required this.value})
      : super(key: key);
  Function? getChbox;
  bool? value;

  @override
  State<CheckBox> createState() => _CheckBoxState();
}

class _CheckBoxState extends State<CheckBox> {
  @override
  Widget build(BuildContext context) {
    Color getColor(Set<MaterialState> states) {
      const Set<MaterialState> interactiveStates = <MaterialState>{
        MaterialState.pressed,
        MaterialState.hovered,
        MaterialState.focused,
      };
      if (states.any(interactiveStates.contains)) {
        return Colors.black;
      }
      return Colors.black;
    }

    return Checkbox(
      checkColor: Colors.white,
      fillColor: MaterialStateProperty.resolveWith(getColor),
      value: widget.value,
      onChanged: (bool? value) {
        widget.getChbox!(value!);
      },
    );
  }
}
