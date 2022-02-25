import 'package:flutter/material.dart';

class ComSpaceHeight extends StatelessWidget {
  const ComSpaceHeight({Key? key, required this.nHeight}) : super(key: key);
  final double nHeight;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: this.nHeight,
    );
  }
}

class ComSpaceWidth extends StatelessWidget {
  const ComSpaceWidth({Key? key, required this.nWidth}) : super(key: key);
  final double nWidth;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: this.nWidth,
    );
  }
}
