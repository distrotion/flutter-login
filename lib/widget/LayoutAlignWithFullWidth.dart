import 'package:flutter/material.dart';

class LayoutAlignWithFullWidth extends StatelessWidget {
  const LayoutAlignWithFullWidth({Key? key, required this.widget, required this.align}) : super(key: key);
  final Widget widget;
  final Alignment align;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: align,
      child: widget,
    );
  }
}
