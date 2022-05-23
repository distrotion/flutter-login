import 'package:flutter/material.dart';

import '../data/datapattern.dart';
import '../widget/common/Checkbox.dart';
import '../widget/common/Radiobutton.dart';
import 'TEST.dart';

bool isChecked = false;

class Page0 extends StatelessWidget {
  const Page0({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ORIGINAL.name.str = '';
    ORIGINAL.name.inte = 0;
    return Page0Body();
  }
}

class Page0Body extends StatelessWidget {
  const Page0Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Center(
      // child: Container(
      //     height: 100,
      //     width: 200,
      //     color: Colors.orange,
      //     child: const Center(
      //         child: Text("initial Page \nor do something wrong"))),
      child: radiotest(),
    );
  }
}

class radiotest extends StatefulWidget {
  const radiotest({Key? key}) : super(key: key);

  @override
  State<radiotest> createState() => _radiotestState();
}

class _radiotestState extends State<radiotest> {
  bool testradio = false;
  @override
  Widget build(BuildContext context) {
    return Radiobutton(
      value: testradio,
      getdata: (input) {
        setState(() {
          testradio = input;
        });
      },
    );
  }
}
