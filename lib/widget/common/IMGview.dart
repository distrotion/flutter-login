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

class PicShowProfile extends StatefulWidget {
  PicShowProfile({Key? key, required this.base64, this.height, this.width})
      : super(key: key);
  String base64;
  double? height;
  double? width;
  @override
  State createState() => PicShowProfileState();
}

class PicShowProfileState extends State<PicShowProfile> {
  // String _base64 = base64pic01;

  @override
  Widget build(BuildContext context) {
    if (widget.base64 == null) return Container();
    Uint8List bytes = base64.decode(widget.base64);
    return SizedBox(
        height: widget.height ?? 50,
        width: widget.width ?? 50,
        child: AspectRatio(
          aspectRatio: 35 / 49,
          child: Image.memory(
            bytes,
            fit: BoxFit.fitWidth,
          ),
        ));
  }
}

class PicShowregister extends StatefulWidget {
  PicShowregister({Key? key, required this.base64, this.height, this.width})
      : super(key: key);
  String base64;
  double? height;
  double? width;
  @override
  State createState() => PicShowregisterState();
}

class PicShowregisterState extends State<PicShowregister> {
  // String _base64 = base64pic01;

  @override
  Widget build(BuildContext context) {
    if (widget.base64 == null) return Container();
    Uint8List bytes = base64.decode(widget.base64);
    return SizedBox(
        height: widget.height ?? 50,
        width: widget.width ?? 50,
        child: AspectRatio(
          aspectRatio: 127 / 127,
          child: Image.memory(
            bytes,
            fit: BoxFit.fitWidth,
          ),
        ));
  }
}

class PicShowMenu extends StatefulWidget {
  PicShowMenu({Key? key, required this.base64, this.height, this.width})
      : super(key: key);
  String base64;
  double? height;
  double? width;
  @override
  State createState() => PicShowMenuState();
}

class PicShowMenuState extends State<PicShowMenu> {
  // String _base64 = base64pic01;

  @override
  Widget build(BuildContext context) {
    if (widget.base64 == null) return Container();
    Uint8List bytes = base64.decode(widget.base64);
    return SizedBox(
        height: widget.height ?? 50,
        width: widget.width ?? 50,
        child: AspectRatio(
          aspectRatio: 127 / 127,
          child: Image.memory(
            bytes,
            fit: BoxFit.fitWidth,
          ),
        ));
  }
}

class PicShowLOGO extends StatefulWidget {
  PicShowLOGO({Key? key, required this.base64, this.height, this.width})
      : super(key: key);
  String base64;
  double? height;
  double? width;
  @override
  State createState() => PicShowLOGOState();
}

class PicShowLOGOState extends State<PicShowLOGO> {
  // String _base64 = base64pic01;

  @override
  Widget build(BuildContext context) {
    if (widget.base64 == null) return Container();
    Uint8List bytes = base64.decode(widget.base64);
    return SizedBox(
        height: widget.height ?? 50,
        width: widget.width ?? 50,
        child: AspectRatio(
          aspectRatio: 21 / 16,
          child: Image.memory(
            bytes,
            fit: BoxFit.fitWidth,
          ),
        ));
  }
}
