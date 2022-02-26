import 'package:flutter/material.dart';
import 'page0.dart';
import '../data/global.dart';

class Page9 extends StatelessWidget {
  const Page9({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Page9Body();
  }
}

class Page9Body extends StatelessWidget {
  const Page9Body({Key? key}) : super(key: key);

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
