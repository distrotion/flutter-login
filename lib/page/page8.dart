import 'package:flutter/material.dart';
import 'page0.dart';
import '../data/global.dart';

class Page8 extends StatelessWidget {
  const Page8({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Page8Body();
  }
}

class Page8Body extends StatelessWidget {
  const Page8Body({Key? key}) : super(key: key);

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
