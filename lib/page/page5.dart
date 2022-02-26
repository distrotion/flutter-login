import 'package:flutter/material.dart';
import 'page0.dart';
import '../data/global.dart';

class Page5 extends StatelessWidget {
  const Page5({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Page5Body();
  }
}

class Page5Body extends StatelessWidget {
  const Page5Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        height: 100,
        width: 100,
        color: Colors.deepOrange,
        child: const Text("PAGE 5"),
      ),
    );
  }
}
