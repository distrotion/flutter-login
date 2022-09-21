import 'package:flutter/material.dart';

class CheckBoxC extends StatefulWidget {
  CheckBoxC({Key? key, required this.getChbox, required this.value})
      : super(key: key);
  Function(bool)? getChbox;
  bool? value;

  @override
  State<CheckBoxC> createState() => _CheckBoxCState();
}

class _CheckBoxCState extends State<CheckBoxC> {
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
