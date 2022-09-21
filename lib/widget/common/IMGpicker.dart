import 'dart:convert';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

Future<String> imgpickgallery() async {
  final ImagePicker _picker = ImagePicker();
  final XFile? image = await _picker.pickImage(source: ImageSource.gallery);
  if (image != null) {
    // print("---->");
    // print(image.path);
    final bytes = File(image.path).readAsBytesSync();
    String img64 = base64Encode(bytes);
    return img64;
  }
  return '';
}

Future<String> imgpickgallery_upload() async {
  final ImagePicker _picker = ImagePicker();
  final XFile? image = await _picker.pickImage(source: ImageSource.gallery);
  if (image != null) {
    // print("---->");
    // print(image.path);
    final bytes = File(image.path).readAsBytesSync();
    String img64 = base64Encode(bytes);
    return img64;
  }
  return '';
}
