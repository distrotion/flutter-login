import 'dart:convert';
import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:image/image.dart' as IMG;

class PicShow extends StatefulWidget {
  PicShow({Key? key, required this.base64, this.height, this.width})
      : super(key: key);
  String base64;
  double? height;
  double? width;
  @override
  State createState() => PicShowState();
}

class PicShowState extends State<PicShow> {
  // String _base64 = base64pic01;

  @override
  Widget build(BuildContext context) {
    if (widget.base64 == null) return Container();
    Uint8List bytes = base64.decode(widget.base64);
    return SizedBox(
      height: widget.height ?? 50,
      width: widget.width ?? 50,
      child: Image.memory(bytes),
    );
  }
}
