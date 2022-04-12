import 'package:flutter/material.dart';

import '../widget/common/Advancedropdown.dart';

class Page0 extends StatelessWidget {
  const Page0({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return testbutton();
  }
}

class Page0Body extends StatelessWidget {
  const Page0Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
          height: 100,
          width: 200,
          color: Colors.orange,
          child: const Center(
              child: Text("initial Page \nor do something wrong"))),
    );
  }
}

class testbutton extends StatefulWidget {
  testbutton({Key? key}) : super(key: key);

  @override
  State<testbutton> createState() => _testbuttonState();
}

class _testbuttonState extends State<testbutton> {
  String test01 = '';
  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        height: 40,
        child: AdvanceDropDown(
          listdropdown: [AdvanceDropDownOB(text: "text", value: "value")],
          onChangeinside: (d) {
            setState(() {
              test01 = d;
              print(test01);
            });
          },
          value: test01,
          height: 40,
          width: 100,
        ),
      ),
    );
  }
}
