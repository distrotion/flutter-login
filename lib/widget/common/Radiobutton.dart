import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

int index = 0;

class Radiobutton extends StatefulWidget {
  Radiobutton({
    Key? key,
    required this.value,
    required this.getdata,
  }) : super(key: key);
  bool value;
  Function getdata;
  @override
  State<StatefulWidget> createState() => _RadiobuttonState();
}

class _RadiobuttonState extends State<Radiobutton> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        if (widget.value) {
          widget.getdata(false);
        } else {
          widget.getdata(true);
        }
      },
      child: Container(
        child: widget.value
            ? const Icon(Icons.radio_button_checked)
            : const Icon(Icons.radio_button_off),
      ),
    );
  }
}
