import 'dart:convert';
import 'dart:io';
import 'dart:typed_data';
import 'package:file_picker/file_picker.dart';

import 'package:flutter/material.dart';
import 'package:image/image.dart' as IMG;
import 'package:image_picker/image_picker.dart';

class FileButton extends StatefulWidget {
  FileButton({
    Key? key,
    required this.base64pic,
    required this.setimg,
  }) : super(key: key);
  String base64pic;
  Function setimg;
  @override
  State<FileButton> createState() => _FileButtonState();
}

class _FileButtonState extends State<FileButton> {
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      child: const Text('UPLOAD'),
      onPressed: () async {
        var picked = await FilePicker.platform.pickFiles();
        Uint8List? imageByte;
        Uint8List? resizedData;

        if (picked != null) {
          imageByte = picked.files.first.bytes;
          IMG.Image? img = IMG.decodeImage(imageByte!);
          // IMG.Image? img2 = IMG.copyResize(img!, width: 500);
          resizedData = IMG.encodeJpg(img!) as Uint8List?;
          setState(() {
            widget.setimg(base64.encode(resizedData!));
          });
        }
      },
    );
  }
}

Future<String> file64picker() async {
  var _picker = await FilePicker.platform.pickFiles();
  Uint8List? dataByte;

  if (_picker != null) {
    dataByte = _picker.files.first.bytes;
    // IMG.Image? img = IMG.decodeImage(imageByte!);
    // IMG.Image? img2 = IMG.copyResize(img!, width: 500);
    // resizedData = IMG.encodeJpg(img!) as Uint8List?;
    String file64 = base64.encode(dataByte!);
    return file64;
  }
  return '';
}

Future<String> file64pickerIMG() async {
  var _picker = await FilePicker.platform.pickFiles(
    type: FileType.custom,
    allowedExtensions: ['jpg', 'jpeg', 'svg', 'png'],
  );
  Uint8List? imageByte;
  Uint8List? resizedData;

  if (_picker != null) {
    imageByte = _picker.files.first.bytes;
    IMG.Image? img = IMG.decodeImage(imageByte!);
    // IMG.Image? img2 = IMG.copyResize(img!, width: 500);
    resizedData = IMG.encodeJpg(img!) as Uint8List?;
    String file64 = base64.encode(resizedData!);
    return file64;
  }
  return '';
}
