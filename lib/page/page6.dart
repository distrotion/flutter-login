import 'package:flutter/material.dart';
import 'page0.dart';
import '../data/global.dart';

class Page6 extends StatelessWidget {
  const Page6({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Page6Body();
  }
}

class Page6Body extends StatelessWidget {
  const Page6Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        height: 100,
        width: 100,
        color: Colors.green,
      ),
    );
  }
}
