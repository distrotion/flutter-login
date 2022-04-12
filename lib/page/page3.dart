import 'package:flutter/material.dart';
import 'page0.dart';
import '../data/global.dart';
import 'dart:async';

class Page3 extends StatelessWidget {
  const Page3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Page3Body();
  }
}

class Page3Body extends StatelessWidget {
  const Page3Body({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        height: 100,
        width: 100,
        color: Colors.green,
        child: const Text("PAGE 3"),
      ),
    );
  }
}

// Timer timer = new Timer(new Duration(seconds: 3), () {
//   debugPrint("Print after 3 seconds");
// });

class timmerTEST extends StatefulWidget {
  const timmerTEST({Key? key}) : super(key: key);

  @override
  State<timmerTEST> createState() => _timmerTESTState();
}

int tic = 0;

class _timmerTESTState extends State<timmerTEST> {
  @override
  Widget build(BuildContext context) {
    // Timer.periodic(const Duration(seconds: 3), (timer) {
    //   tic++;
    //   print(tic);
    //   // setState(() {
    //   //   // debugPrint(timer.tick.toString());
    //   // });
    // });
    return Center(
      child: Container(
        height: 100,
        width: 100,
        color: Colors.green,
        child: Text('${tic}'),
      ),
    );
  }
}
