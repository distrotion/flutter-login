import 'package:flutter/material.dart';

//---------------------------------------------------------
import 'package:flutter_bloc/flutter_bloc.dart';

import '../bloc/cubit/NotificationEvent.dart';
import 'page0.dart';
import '../data/global.dart';

//---------------------------------------------------------

class Page1 extends StatelessWidget {
  const Page1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Page1Body();
  }
}

class Page1Body extends StatelessWidget {
  const Page1Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return testbody();
  }
}

class testbody extends StatefulWidget {
  // const testbody({Key? key}) : super(key: key);
  @override
  _testbodyState createState() => _testbodyState();
}

class _testbodyState extends State<testbody> {
  int x = 0;

  @override
  Widget build(BuildContext context) {
    Container subpage1 = Container(
      height: 200,
      width: 200,
      color: Colors.red,
    );
    Container subpage2 = Container(
      height: 200,
      width: 200,
      color: Colors.pink,
    );
    Container subpage3 = Container(
      height: 200,
      width: 200,
      color: Colors.orange,
    );
    Container out;
    if (x == 0) {
      out = subpage1;
    } else if (x == 1) {
      out = subpage2;
    } else {
      out = subpage3;
    }

    return Column(
      children: [
        Row(
          children: [
            InkWell(
              onTap: () {},
              child: Container(
                height: 25,
                width: 100,
                color: Colors.black,
              ),
            ),
            InkWell(
              onTap: () {},
              child: Container(
                height: 25,
                width: 100,
                color: Colors.black45,
              ),
            ),
          ],
        ),
        Center(child: out)
      ],
    );
  }
}


//BlocProvider.of<SwPageCubit>(context).togglePage(page);
// BlocPageRebuild blocPageRebuild = BlocProvider.of<BlocPageRebuild>(context).rebuildPage();