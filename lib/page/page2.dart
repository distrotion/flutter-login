import 'package:flutter/material.dart';

import '../data/global.dart';
import 'page0.dart';
import '../data/global.dart';

class Page2 extends StatelessWidget {
  const Page2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Page2Body();
    ;
  }
}

class Page2Body extends StatelessWidget {
  const Page2Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        height: 100,
        width: 100,
        color: Colors.blue,
        child: const Text("PAGE 2"),
      ),
    );
  }
}
