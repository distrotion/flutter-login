import 'package:flutter/material.dart';

class Page0 extends StatelessWidget {
  const Page0({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
          height: 100,
          width: 200,
          color: Colors.orange,
          child: Center(
              child: const Text("initial Page \nor do something wrong"))),
    );
  }
}
