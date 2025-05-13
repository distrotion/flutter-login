import 'package:flutter/material.dart';
import '../common/imgset.dart';

class HEAD3SLOT extends StatelessWidget {
  HEAD3SLOT({
    Key? key,
    this.ListFlex,
    this.widget01,
    this.widget02,
    this.widget03,
  }) : super(key: key);

  List<int>? ListFlex;
  Widget? widget01;
  Widget? widget02;
  Widget? widget03;

  @override
  Widget build(BuildContext context) {
    List<int> _ListFlex = ListFlex ?? [1, 1, 1, 1, 1, 1, 1, 1, 1, 1];
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        children: [
          Expanded(
            flex: _ListFlex[0],
            child: Container(
              height: 180,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.black, width: 3),
              ),
              child: widget01 ?? const SizedBox(),
            ),
          ),
          Expanded(
            flex: _ListFlex[1],
            child: Container(
              height: 180,
              decoration: const BoxDecoration(
                border: Border(
                  top: BorderSide(
                      color: Colors.black, width: 3, style: BorderStyle.solid),
                  bottom: BorderSide(
                      color: Colors.black, width: 3, style: BorderStyle.solid),
                ),
              ),
              child: widget02 ?? const SizedBox(),
            ),
          ),
          Expanded(
            flex: _ListFlex[2],
            child: Container(
              decoration: BoxDecoration(
                border: Border.all(color: Colors.black, width: 3),
              ),
              height: 180,
              child: widget03 ?? const SizedBox(),
            ),
          ),
        ],
      ),
    );
  }
}

class BODY3SLOT extends StatelessWidget {
  BODY3SLOT({
    Key? key,
    this.ListFlex,
    this.widget01,
    this.widget02,
    this.widget03,
  }) : super(key: key);
  List<int>? ListFlex;
  Widget? widget01;
  Widget? widget02;
  Widget? widget03;

  @override
  Widget build(BuildContext context) {
    List<int> _ListFlex = ListFlex ?? [1, 1, 1, 1, 1, 1, 1, 1, 1, 1];
    return Padding(
      padding: const EdgeInsets.only(right: 8, left: 8),
      child: Row(
        children: [
          Expanded(
            flex: _ListFlex[0],
            child: Container(
              child: widget01 ?? const SizedBox(),
              height: 47,
              decoration: const BoxDecoration(
                border: Border(
                  left: BorderSide(
                      color: Colors.black, width: 3, style: BorderStyle.solid),
                  right: BorderSide(
                      color: Colors.black, width: 3, style: BorderStyle.solid),
                  bottom: BorderSide(
                      color: Colors.black, width: 3, style: BorderStyle.solid),
                ),
              ),
            ),
          ),
          Expanded(
            flex: _ListFlex[1],
            child: Container(
              child: widget02 ?? const SizedBox(),
              height: 47,
              decoration: const BoxDecoration(
                border: Border(
                  // top: BorderSide(
                  //     color: Colors.black,
                  //     width: 3,
                  //     style: BorderStyle.solid),
                  bottom: BorderSide(
                      color: Colors.black, width: 3, style: BorderStyle.solid),
                ),
              ),
            ),
          ),
          Expanded(
            flex: _ListFlex[2],
            child: Container(
              child: widget03 ?? const SizedBox(),
              height: 47,
              decoration: const BoxDecoration(
                border: Border(
                  left: BorderSide(
                      color: Colors.black, width: 3, style: BorderStyle.solid),
                  right: BorderSide(
                      color: Colors.black, width: 3, style: BorderStyle.solid),
                  bottom: BorderSide(
                      color: Colors.black, width: 3, style: BorderStyle.solid),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class HEAD4SLOT extends StatelessWidget {
  HEAD4SLOT({
    Key? key,
    this.ListFlex,
    this.hig,
    this.padd,
    this.widget01,
    this.widget02,
    this.widget03,
    this.widget04,
  }) : super(key: key);
  List<int>? ListFlex;
  double? hig;
  double? padd;
  Widget? widget01;
  Widget? widget02;
  Widget? widget03;
  Widget? widget04;

  @override
  Widget build(BuildContext context) {
    List<int> _ListFlex = ListFlex ?? [1, 1, 1, 1, 1, 1, 1, 1, 1, 1];
    return Padding(
      padding: EdgeInsets.only(right: padd ?? 8, left: padd ?? 8),
      child: Row(
        children: [
          Expanded(
            flex: _ListFlex[0],
            child: Container(
              child: widget01 ?? const SizedBox(),
              height: hig ?? 55,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.black, width: 3),
              ),
            ),
          ),
          Expanded(
            flex: _ListFlex[1],
            child: Container(
              child: widget02 ?? const SizedBox(),
              height: hig ?? 55,
              decoration: const BoxDecoration(
                border: Border(
                  top: BorderSide(
                      color: Colors.black, width: 3, style: BorderStyle.solid),
                  bottom: BorderSide(
                      color: Colors.black, width: 3, style: BorderStyle.solid),
                ),
              ),
            ),
          ),
          Expanded(
            flex: _ListFlex[2],
            child: Container(
              child: widget03 ?? const SizedBox(),
              height: hig ?? 55,
              decoration: const BoxDecoration(
                border: Border(
                  left: BorderSide(
                      color: Colors.black, width: 3, style: BorderStyle.solid),
                  top: BorderSide(
                      color: Colors.black, width: 3, style: BorderStyle.solid),
                  bottom: BorderSide(
                      color: Colors.black, width: 3, style: BorderStyle.solid),
                ),
              ),
            ),
          ),
          Expanded(
            flex: _ListFlex[3],
            child: Container(
              child: widget04 ?? const SizedBox(),
              height: hig ?? 55,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.black, width: 3),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class BODY4SLOT extends StatelessWidget {
  BODY4SLOT({
    Key? key,
    this.ListFlex,
    this.hig,
    this.padd,
    this.widget01,
    this.widget02,
    this.widget03,
    this.widget04,
  }) : super(key: key);
  List<int>? ListFlex;
  double? hig;
  double? padd;
  Widget? widget01;
  Widget? widget02;
  Widget? widget03;
  Widget? widget04;

  @override
  Widget build(BuildContext context) {
    List<int> _ListFlex = ListFlex ?? [1, 1, 1, 1, 1, 1, 1, 1, 1, 1];
    return Padding(
      padding: EdgeInsets.only(right: padd ?? 8, left: padd ?? 8),
      child: Row(
        children: [
          Expanded(
            flex: _ListFlex[0],
            child: Container(
              child: widget01 ?? const SizedBox(),
              height: hig ?? 47,
              decoration: const BoxDecoration(
                border: Border(
                  left: BorderSide(
                      color: Colors.black, width: 3, style: BorderStyle.solid),
                  right: BorderSide(
                      color: Colors.black, width: 3, style: BorderStyle.solid),
                  bottom: BorderSide(
                      color: Colors.black, width: 3, style: BorderStyle.solid),
                ),
              ),
            ),
          ),
          Expanded(
            flex: _ListFlex[1],
            child: Container(
              child: widget02 ?? const SizedBox(),
              height: hig ?? 47,
              decoration: const BoxDecoration(
                border: Border(
                  // top: BorderSide(
                  //     color: Colors.black,
                  //     width: 3,
                  //     style: BorderStyle.solid),
                  bottom: BorderSide(
                      color: Colors.black, width: 3, style: BorderStyle.solid),
                ),
              ),
            ),
          ),
          Expanded(
            flex: _ListFlex[2],
            child: Container(
              child: widget03 ?? const SizedBox(),
              height: hig ?? 47,
              decoration: const BoxDecoration(
                border: Border(
                  left: BorderSide(
                      color: Colors.black, width: 3, style: BorderStyle.solid),
                  // top: BorderSide(
                  //     color: Colors.black,
                  //     width: 3,
                  //     style: BorderStyle.solid),
                  bottom: BorderSide(
                      color: Colors.black, width: 3, style: BorderStyle.solid),
                ),
              ),
            ),
          ),
          Expanded(
            flex: _ListFlex[3],
            child: Container(
              child: widget04 ?? const SizedBox(),
              height: hig ?? 47,
              decoration: const BoxDecoration(
                border: Border(
                  left: BorderSide(
                      color: Colors.black, width: 3, style: BorderStyle.solid),
                  right: BorderSide(
                      color: Colors.black, width: 3, style: BorderStyle.solid),
                  bottom: BorderSide(
                      color: Colors.black, width: 3, style: BorderStyle.solid),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class BODY2SLOT extends StatelessWidget {
  BODY2SLOT({
    Key? key,
    this.ListFlex,
    this.widget01,
    this.widget02,
  }) : super(key: key);
  List<int>? ListFlex;
  Widget? widget01;
  Widget? widget02;

  @override
  Widget build(BuildContext context) {
    List<int> _ListFlex = ListFlex ?? [1, 1, 1, 1, 1, 1, 1, 1, 1, 1];
    return Padding(
      padding: const EdgeInsets.only(right: 8, left: 8),
      child: Row(
        children: [
          Expanded(
            flex: _ListFlex[0],
            child: Container(
              child: widget01 ?? const SizedBox(),
              height: 47,
              decoration: const BoxDecoration(
                border: Border(
                  left: BorderSide(
                      color: Colors.black, width: 3, style: BorderStyle.solid),
                  right: BorderSide(
                      color: Colors.black, width: 3, style: BorderStyle.solid),
                  bottom: BorderSide(
                      color: Colors.black, width: 3, style: BorderStyle.solid),
                ),
              ),
            ),
          ),
          Expanded(
            flex: _ListFlex[1],
            child: Container(
              child: widget02 ?? const SizedBox(),
              height: 47,
              decoration: const BoxDecoration(
                border: Border(
                  right: BorderSide(
                      color: Colors.black, width: 3, style: BorderStyle.solid),
                  bottom: BorderSide(
                      color: Colors.black, width: 3, style: BorderStyle.solid),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class HEAD2SLOT extends StatelessWidget {
  HEAD2SLOT({
    Key? key,
    this.ListFlex,
    this.widget01,
    this.widget02,
    // this.widget03,
    // this.widget04,
    // this.widget05,
    // this.widget06,
  }) : super(key: key);
  List<int>? ListFlex;
  Widget? widget01;
  Widget? widget02;
  // Widget? widget03;
  // Widget? widget04;
  // Widget? widget05;
  // Widget? widget06;

  @override
  Widget build(BuildContext context) {
    List<int> _ListFlex = ListFlex ?? [1, 1, 1, 1, 1, 1, 1, 1, 1, 1];
    return Padding(
      padding: const EdgeInsets.only(right: 8, left: 8),
      child: Row(
        children: [
          Expanded(
            flex: _ListFlex[0],
            child: Container(
              child: widget01 ?? const SizedBox(),
              height: 47,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.black, width: 3),
              ),
            ),
          ),
          Expanded(
            flex: _ListFlex[1],
            child: Container(
              child: widget02 ?? const SizedBox(),
              height: 47,
              decoration: const BoxDecoration(
                border: Border(
                  right: BorderSide(
                      color: Colors.black, width: 3, style: BorderStyle.solid),
                  top: BorderSide(
                      color: Colors.black, width: 3, style: BorderStyle.solid),
                  bottom: BorderSide(
                      color: Colors.black, width: 3, style: BorderStyle.solid),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class HEAD6SLOT extends StatelessWidget {
  HEAD6SLOT({
    Key? key,
    this.ListFlex,
    this.widget01,
    this.widget02,
    this.widget03,
    this.widget04,
    this.widget05,
    this.widget06,
  }) : super(key: key);
  List<int>? ListFlex;
  Widget? widget01;
  Widget? widget02;
  Widget? widget03;
  Widget? widget04;
  Widget? widget05;
  Widget? widget06;

  @override
  Widget build(BuildContext context) {
    List<int> _ListFlex = ListFlex ?? [1, 1, 1, 1, 1, 1, 1, 1, 1, 1];
    return Padding(
      padding: const EdgeInsets.only(right: 8, left: 8),
      child: Row(
        children: [
          Expanded(
            flex: _ListFlex[0],
            child: Container(
              child: widget01 ?? const SizedBox(),
              height: 47,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.black, width: 3),
              ),
            ),
          ),
          Expanded(
            flex: _ListFlex[1],
            child: Container(
              child: widget02 ?? const SizedBox(),
              height: 47,
              decoration: const BoxDecoration(
                border: Border(
                  top: BorderSide(
                      color: Colors.black, width: 3, style: BorderStyle.solid),
                  bottom: BorderSide(
                      color: Colors.black, width: 3, style: BorderStyle.solid),
                ),
              ),
            ),
          ),
          Expanded(
            flex: _ListFlex[2],
            child: Container(
              child: widget03 ?? const SizedBox(),
              height: 47,
              decoration: const BoxDecoration(
                border: Border(
                  left: BorderSide(
                      color: Colors.black, width: 3, style: BorderStyle.solid),
                  top: BorderSide(
                      color: Colors.black, width: 3, style: BorderStyle.solid),
                  bottom: BorderSide(
                      color: Colors.black, width: 3, style: BorderStyle.solid),
                ),
              ),
            ),
          ),
          Expanded(
            flex: _ListFlex[3],
            child: Container(
              child: widget04 ?? const SizedBox(),
              height: 47,
              decoration: const BoxDecoration(
                border: Border(
                  left: BorderSide(
                      color: Colors.black, width: 3, style: BorderStyle.solid),
                  top: BorderSide(
                      color: Colors.black, width: 3, style: BorderStyle.solid),
                  bottom: BorderSide(
                      color: Colors.black, width: 3, style: BorderStyle.solid),
                ),
              ),
            ),
          ),
          Expanded(
            flex: _ListFlex[4],
            child: Container(
              child: widget05 ?? const SizedBox(),
              height: 47,
              decoration: const BoxDecoration(
                border: Border(
                  left: BorderSide(
                      color: Colors.black, width: 3, style: BorderStyle.solid),
                  top: BorderSide(
                      color: Colors.black, width: 3, style: BorderStyle.solid),
                  bottom: BorderSide(
                      color: Colors.black, width: 3, style: BorderStyle.solid),
                ),
              ),
            ),
          ),
          Expanded(
            flex: _ListFlex[5],
            child: Container(
              child: widget06 ?? const SizedBox(),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.black, width: 3),
              ),
              height: 47,
            ),
          ),
        ],
      ),
    );
  }
}

class BODY6SLOT extends StatelessWidget {
  BODY6SLOT({
    Key? key,
    this.ListFlex,
    this.widget01,
    this.widget02,
    this.widget03,
    this.widget04,
    this.widget05,
    this.widget06,
  }) : super(key: key);
  List<int>? ListFlex;
  Widget? widget01;
  Widget? widget02;
  Widget? widget03;
  Widget? widget04;
  Widget? widget05;
  Widget? widget06;

  @override
  Widget build(BuildContext context) {
    List<int> _ListFlex = ListFlex ?? [1, 1, 1, 1, 1, 1, 1, 1, 1, 1];
    return Padding(
      padding: const EdgeInsets.only(right: 8, left: 8),
      child: Row(
        children: [
          Expanded(
            flex: _ListFlex[0],
            child: Container(
              child: widget01 ?? const SizedBox(),
              height: 47,
              decoration: const BoxDecoration(
                border: Border(
                  left: BorderSide(
                      color: Colors.black, width: 3, style: BorderStyle.solid),
                  right: BorderSide(
                      color: Colors.black, width: 3, style: BorderStyle.solid),
                  bottom: BorderSide(
                      color: Colors.black, width: 3, style: BorderStyle.solid),
                ),
              ),
            ),
          ),
          Expanded(
            flex: _ListFlex[1],
            child: Container(
              child: widget02 ?? const SizedBox(),
              height: 47,
              decoration: const BoxDecoration(
                border: Border(
                  // top: BorderSide(
                  //     color: Colors.black,
                  //     width: 3,
                  //     style: BorderStyle.solid),
                  bottom: BorderSide(
                      color: Colors.black, width: 3, style: BorderStyle.solid),
                ),
              ),
            ),
          ),
          Expanded(
            flex: _ListFlex[2],
            child: Container(
              child: widget03 ?? const SizedBox(),
              height: 47,
              decoration: const BoxDecoration(
                border: Border(
                  left: BorderSide(
                      color: Colors.black, width: 3, style: BorderStyle.solid),
                  // top: BorderSide(
                  //     color: Colors.black,
                  //     width: 3,
                  //     style: BorderStyle.solid),
                  bottom: BorderSide(
                      color: Colors.black, width: 3, style: BorderStyle.solid),
                ),
              ),
            ),
          ),
          Expanded(
            flex: _ListFlex[3],
            child: Container(
              child: widget04 ?? const SizedBox(),
              height: 47,
              decoration: const BoxDecoration(
                border: Border(
                  left: BorderSide(
                      color: Colors.black, width: 3, style: BorderStyle.solid),
                  // top: BorderSide(
                  //     color: Colors.black,
                  //     width: 3,
                  //     style: BorderStyle.solid),
                  bottom: BorderSide(
                      color: Colors.black, width: 3, style: BorderStyle.solid),
                ),
              ),
            ),
          ),
          Expanded(
            flex: _ListFlex[4],
            child: Container(
              child: widget05 ?? const SizedBox(),
              height: 47,
              decoration: const BoxDecoration(
                border: Border(
                  left: BorderSide(
                      color: Colors.black, width: 3, style: BorderStyle.solid),
                  // top: BorderSide(
                  //     color: Colors.black,
                  //     width: 3,
                  //     style: BorderStyle.solid),
                  bottom: BorderSide(
                      color: Colors.black, width: 3, style: BorderStyle.solid),
                ),
              ),
            ),
          ),
          Expanded(
            flex: _ListFlex[5],
            child: Container(
              child: widget06 ?? const SizedBox(),
              height: 47,
              decoration: const BoxDecoration(
                border: Border(
                  left: BorderSide(
                      color: Colors.black, width: 3, style: BorderStyle.solid),
                  right: BorderSide(
                      color: Colors.black, width: 3, style: BorderStyle.solid),
                  bottom: BorderSide(
                      color: Colors.black, width: 3, style: BorderStyle.solid),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class HEAD1SLOT extends StatelessWidget {
  HEAD1SLOT({
    Key? key,
    this.widget01,
  }) : super(key: key);
  Widget? widget01;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 12, bottom: 12, right: 8, left: 8),
      child: Row(
        children: [
          Expanded(
            flex: 1,
            child: Container(
              child: widget01 ?? const SizedBox(),
              height: 47,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.black, width: 3),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class HEAD7SLOT extends StatelessWidget {
  HEAD7SLOT({
    Key? key,
    this.ListFlex,
    this.widget01,
    this.widget02,
    this.widget03,
    this.widget04,
    this.widget05,
    this.widget06,
    this.widget07,
  }) : super(key: key);
  List<int>? ListFlex;
  Widget? widget01;
  Widget? widget02;
  Widget? widget03;
  Widget? widget04;
  Widget? widget05;
  Widget? widget06;
  Widget? widget07;

  @override
  Widget build(BuildContext context) {
    List<int> _ListFlex = ListFlex ?? [1, 1, 1, 1, 1, 1, 1, 1, 1, 1];
    return Padding(
      padding: const EdgeInsets.only(right: 8, left: 8),
      child: Row(
        children: [
          Expanded(
            flex: _ListFlex[0],
            child: Container(
              child: widget01 ?? const SizedBox(),
              height: 47,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.black, width: 3),
              ),
            ),
          ),
          Expanded(
            flex: _ListFlex[1],
            child: Container(
              child: widget02 ?? const SizedBox(),
              height: 47,
              decoration: const BoxDecoration(
                border: Border(
                  top: BorderSide(
                      color: Colors.black, width: 3, style: BorderStyle.solid),
                  bottom: BorderSide(
                      color: Colors.black, width: 3, style: BorderStyle.solid),
                ),
              ),
            ),
          ),
          Expanded(
            flex: _ListFlex[2],
            child: Container(
              child: widget03 ?? const SizedBox(),
              height: 47,
              decoration: const BoxDecoration(
                border: Border(
                  left: BorderSide(
                      color: Colors.black, width: 3, style: BorderStyle.solid),
                  top: BorderSide(
                      color: Colors.black, width: 3, style: BorderStyle.solid),
                  bottom: BorderSide(
                      color: Colors.black, width: 3, style: BorderStyle.solid),
                ),
              ),
            ),
          ),
          Expanded(
            flex: _ListFlex[3],
            child: Container(
              child: widget04 ?? const SizedBox(),
              height: 47,
              decoration: const BoxDecoration(
                border: Border(
                  left: BorderSide(
                      color: Colors.black, width: 3, style: BorderStyle.solid),
                  top: BorderSide(
                      color: Colors.black, width: 3, style: BorderStyle.solid),
                  bottom: BorderSide(
                      color: Colors.black, width: 3, style: BorderStyle.solid),
                ),
              ),
            ),
          ),
          Expanded(
            flex: _ListFlex[4],
            child: Container(
              child: widget05 ?? const SizedBox(),
              height: 47,
              decoration: const BoxDecoration(
                border: Border(
                  left: BorderSide(
                      color: Colors.black, width: 3, style: BorderStyle.solid),
                  top: BorderSide(
                      color: Colors.black, width: 3, style: BorderStyle.solid),
                  bottom: BorderSide(
                      color: Colors.black, width: 3, style: BorderStyle.solid),
                ),
              ),
            ),
          ),
          Expanded(
            flex: _ListFlex[5],
            child: Container(
              child: widget06 ?? const SizedBox(),
              height: 47,
              decoration: const BoxDecoration(
                border: Border(
                  left: BorderSide(
                      color: Colors.black, width: 3, style: BorderStyle.solid),
                  top: BorderSide(
                      color: Colors.black, width: 3, style: BorderStyle.solid),
                  bottom: BorderSide(
                      color: Colors.black, width: 3, style: BorderStyle.solid),
                ),
              ),
            ),
          ),
          Expanded(
            flex: _ListFlex[6],
            child: Container(
              child: widget07 ?? const SizedBox(),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.black, width: 3),
              ),
              height: 47,
            ),
          ),
        ],
      ),
    );
  }
}

class BODY7SLOT extends StatelessWidget {
  BODY7SLOT({
    Key? key,
    this.ListFlex,
    this.widget01,
    this.widget02,
    this.widget03,
    this.widget04,
    this.widget05,
    this.widget06,
    this.widget07,
  }) : super(key: key);
  List<int>? ListFlex;
  Widget? widget01;
  Widget? widget02;
  Widget? widget03;
  Widget? widget04;
  Widget? widget05;
  Widget? widget06;
  Widget? widget07;

  @override
  Widget build(BuildContext context) {
    List<int> _ListFlex = ListFlex ?? [1, 1, 1, 1, 1, 1, 1, 1, 1, 1];
    return Padding(
      padding: const EdgeInsets.only(right: 8, left: 8),
      child: Row(
        children: [
          Expanded(
            flex: _ListFlex[0],
            child: Container(
              child: widget01 ?? const SizedBox(),
              height: 47,
              decoration: const BoxDecoration(
                border: Border(
                  left: BorderSide(
                      color: Colors.black, width: 3, style: BorderStyle.solid),
                  right: BorderSide(
                      color: Colors.black, width: 3, style: BorderStyle.solid),
                  bottom: BorderSide(
                      color: Colors.black, width: 3, style: BorderStyle.solid),
                ),
              ),
            ),
          ),
          Expanded(
            flex: _ListFlex[1],
            child: Container(
              child: widget02 ?? const SizedBox(),
              height: 47,
              decoration: const BoxDecoration(
                border: Border(
                  // top: BorderSide(
                  //     color: Colors.black,
                  //     width: 3,
                  //     style: BorderStyle.solid),
                  bottom: BorderSide(
                      color: Colors.black, width: 3, style: BorderStyle.solid),
                ),
              ),
            ),
          ),
          Expanded(
            flex: _ListFlex[2],
            child: Container(
              child: widget03 ?? const SizedBox(),
              height: 47,
              decoration: const BoxDecoration(
                border: Border(
                  left: BorderSide(
                      color: Colors.black, width: 3, style: BorderStyle.solid),
                  // top: BorderSide(
                  //     color: Colors.black,
                  //     width: 3,
                  //     style: BorderStyle.solid),
                  bottom: BorderSide(
                      color: Colors.black, width: 3, style: BorderStyle.solid),
                ),
              ),
            ),
          ),
          Expanded(
            flex: _ListFlex[3],
            child: Container(
              child: widget04 ?? const SizedBox(),
              height: 47,
              decoration: const BoxDecoration(
                border: Border(
                  left: BorderSide(
                      color: Colors.black, width: 3, style: BorderStyle.solid),
                  // top: BorderSide(
                  //     color: Colors.black,
                  //     width: 3,
                  //     style: BorderStyle.solid),
                  bottom: BorderSide(
                      color: Colors.black, width: 3, style: BorderStyle.solid),
                ),
              ),
            ),
          ),
          Expanded(
            flex: _ListFlex[4],
            child: Container(
              child: widget05 ?? const SizedBox(),
              height: 47,
              decoration: const BoxDecoration(
                border: Border(
                  left: BorderSide(
                      color: Colors.black, width: 3, style: BorderStyle.solid),
                  // top: BorderSide(
                  //     color: Colors.black,
                  //     width: 3,
                  //     style: BorderStyle.solid),
                  bottom: BorderSide(
                      color: Colors.black, width: 3, style: BorderStyle.solid),
                ),
              ),
            ),
          ),
          Expanded(
            flex: _ListFlex[5],
            child: Container(
              child: widget06 ?? const SizedBox(),
              height: 47,
              decoration: const BoxDecoration(
                border: Border(
                  left: BorderSide(
                      color: Colors.black, width: 3, style: BorderStyle.solid),
                  // top: BorderSide(
                  //     color: Colors.black,
                  //     width: 3,
                  //     style: BorderStyle.solid),
                  bottom: BorderSide(
                      color: Colors.black, width: 3, style: BorderStyle.solid),
                ),
              ),
            ),
          ),
          Expanded(
            flex: _ListFlex[6],
            child: Container(
              child: widget07 ?? const SizedBox(),
              height: 47,
              decoration: const BoxDecoration(
                border: Border(
                  left: BorderSide(
                      color: Colors.black, width: 3, style: BorderStyle.solid),
                  right: BorderSide(
                      color: Colors.black, width: 3, style: BorderStyle.solid),
                  bottom: BorderSide(
                      color: Colors.black, width: 3, style: BorderStyle.solid),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class HEAD10SLOT extends StatelessWidget {
  HEAD10SLOT({
    Key? key,
    this.ListFlex,
    this.widget01,
    this.widget02,
    this.widget03,
    this.widget04,
    this.widget05,
    this.widget06,
    this.widget07,
    this.widget08,
    this.widget09,
    this.widget10,
  }) : super(key: key);
  List<int>? ListFlex;
  Widget? widget01;
  Widget? widget02;
  Widget? widget03;
  Widget? widget04;
  Widget? widget05;
  Widget? widget06;
  Widget? widget07;
  Widget? widget08;
  Widget? widget09;
  Widget? widget10;

  @override
  Widget build(BuildContext context) {
    List<int> _ListFlex = ListFlex ??
        [1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1];
    return Padding(
      padding: const EdgeInsets.only(right: 8, left: 8),
      child: Row(
        children: [
          Expanded(
            flex: _ListFlex[0],
            child: Container(
              child: widget01 ?? const SizedBox(),
              height: 47,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.black, width: 3),
              ),
            ),
          ),
          Expanded(
            flex: _ListFlex[1],
            child: Container(
              child: widget02 ?? const SizedBox(),
              height: 47,
              decoration: const BoxDecoration(
                border: Border(
                  top: BorderSide(
                      color: Colors.black, width: 3, style: BorderStyle.solid),
                  bottom: BorderSide(
                      color: Colors.black, width: 3, style: BorderStyle.solid),
                ),
              ),
            ),
          ),
          Expanded(
            flex: _ListFlex[2],
            child: Container(
              child: widget03 ?? const SizedBox(),
              height: 47,
              decoration: const BoxDecoration(
                border: Border(
                  left: BorderSide(
                      color: Colors.black, width: 3, style: BorderStyle.solid),
                  top: BorderSide(
                      color: Colors.black, width: 3, style: BorderStyle.solid),
                  bottom: BorderSide(
                      color: Colors.black, width: 3, style: BorderStyle.solid),
                ),
              ),
            ),
          ),
          Expanded(
            flex: _ListFlex[3],
            child: Container(
              child: widget04 ?? const SizedBox(),
              height: 47,
              decoration: const BoxDecoration(
                border: Border(
                  left: BorderSide(
                      color: Colors.black, width: 3, style: BorderStyle.solid),
                  top: BorderSide(
                      color: Colors.black, width: 3, style: BorderStyle.solid),
                  bottom: BorderSide(
                      color: Colors.black, width: 3, style: BorderStyle.solid),
                ),
              ),
            ),
          ),
          Expanded(
            flex: _ListFlex[4],
            child: Container(
              child: widget05 ?? const SizedBox(),
              height: 47,
              decoration: const BoxDecoration(
                border: Border(
                  left: BorderSide(
                      color: Colors.black, width: 3, style: BorderStyle.solid),
                  top: BorderSide(
                      color: Colors.black, width: 3, style: BorderStyle.solid),
                  bottom: BorderSide(
                      color: Colors.black, width: 3, style: BorderStyle.solid),
                ),
              ),
            ),
          ),
          Expanded(
            flex: _ListFlex[5],
            child: Container(
              child: widget06 ?? const SizedBox(),
              height: 47,
              decoration: const BoxDecoration(
                border: Border(
                  left: BorderSide(
                      color: Colors.black, width: 3, style: BorderStyle.solid),
                  top: BorderSide(
                      color: Colors.black, width: 3, style: BorderStyle.solid),
                  bottom: BorderSide(
                      color: Colors.black, width: 3, style: BorderStyle.solid),
                ),
              ),
            ),
          ),
          Expanded(
            flex: _ListFlex[6],
            child: Container(
              child: widget07 ?? const SizedBox(),
              height: 47,
              decoration: const BoxDecoration(
                border: Border(
                  left: BorderSide(
                      color: Colors.black, width: 3, style: BorderStyle.solid),
                  top: BorderSide(
                      color: Colors.black, width: 3, style: BorderStyle.solid),
                  bottom: BorderSide(
                      color: Colors.black, width: 3, style: BorderStyle.solid),
                ),
              ),
            ),
          ),
          Expanded(
            flex: _ListFlex[7],
            child: Container(
              child: widget08 ?? const SizedBox(),
              height: 47,
              decoration: const BoxDecoration(
                border: Border(
                  left: BorderSide(
                      color: Colors.black, width: 3, style: BorderStyle.solid),
                  top: BorderSide(
                      color: Colors.black, width: 3, style: BorderStyle.solid),
                  bottom: BorderSide(
                      color: Colors.black, width: 3, style: BorderStyle.solid),
                ),
              ),
            ),
          ),
          Expanded(
            flex: _ListFlex[8],
            child: Container(
              child: widget09 ?? const SizedBox(),
              height: 47,
              decoration: const BoxDecoration(
                border: Border(
                  left: BorderSide(
                      color: Colors.black, width: 3, style: BorderStyle.solid),
                  top: BorderSide(
                      color: Colors.black, width: 3, style: BorderStyle.solid),
                  bottom: BorderSide(
                      color: Colors.black, width: 3, style: BorderStyle.solid),
                ),
              ),
            ),
          ),
          Expanded(
            flex: _ListFlex[9],
            child: Container(
              child: widget10 ?? const SizedBox(),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.black, width: 3),
              ),
              height: 47,
            ),
          ),
        ],
      ),
    );
  }
}

class BODY10SLOT extends StatelessWidget {
  BODY10SLOT({
    Key? key,
    this.ListFlex,
    this.widget01,
    this.widget02,
    this.widget03,
    this.widget04,
    this.widget05,
    this.widget06,
    this.widget07,
    this.widget08,
    this.widget09,
    this.widget10,
  }) : super(key: key);
  List<int>? ListFlex;
  Widget? widget01;
  Widget? widget02;
  Widget? widget03;
  Widget? widget04;
  Widget? widget05;
  Widget? widget06;
  Widget? widget07;
  Widget? widget08;
  Widget? widget09;
  Widget? widget10;

  @override
  Widget build(BuildContext context) {
    List<int> _ListFlex = ListFlex ??
        [1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1];
    return Padding(
      padding: const EdgeInsets.only(right: 8, left: 8),
      child: Row(
        children: [
          Expanded(
            flex: _ListFlex[0],
            child: Container(
              child: widget01 ?? const SizedBox(),
              height: 47,
              decoration: const BoxDecoration(
                border: Border(
                  left: BorderSide(
                      color: Colors.black, width: 3, style: BorderStyle.solid),
                  right: BorderSide(
                      color: Colors.black, width: 3, style: BorderStyle.solid),
                  bottom: BorderSide(
                      color: Colors.black, width: 3, style: BorderStyle.solid),
                ),
              ),
            ),
          ),
          Expanded(
            flex: _ListFlex[1],
            child: Container(
              child: widget02 ?? const SizedBox(),
              height: 47,
              decoration: const BoxDecoration(
                border: Border(
                  // top: BorderSide(
                  //     color: Colors.black,
                  //     width: 3,
                  //     style: BorderStyle.solid),
                  bottom: BorderSide(
                      color: Colors.black, width: 3, style: BorderStyle.solid),
                ),
              ),
            ),
          ),
          Expanded(
            flex: _ListFlex[2],
            child: Container(
              child: widget03 ?? const SizedBox(),
              height: 47,
              decoration: const BoxDecoration(
                border: Border(
                  left: BorderSide(
                      color: Colors.black, width: 3, style: BorderStyle.solid),
                  // top: BorderSide(
                  //     color: Colors.black,
                  //     width: 3,
                  //     style: BorderStyle.solid),
                  bottom: BorderSide(
                      color: Colors.black, width: 3, style: BorderStyle.solid),
                ),
              ),
            ),
          ),
          Expanded(
            flex: _ListFlex[3],
            child: Container(
              child: widget04 ?? const SizedBox(),
              height: 47,
              decoration: const BoxDecoration(
                border: Border(
                  left: BorderSide(
                      color: Colors.black, width: 3, style: BorderStyle.solid),
                  // top: BorderSide(
                  //     color: Colors.black,
                  //     width: 3,
                  //     style: BorderStyle.solid),
                  bottom: BorderSide(
                      color: Colors.black, width: 3, style: BorderStyle.solid),
                ),
              ),
            ),
          ),
          Expanded(
            flex: _ListFlex[4],
            child: Container(
              child: widget05 ?? const SizedBox(),
              height: 47,
              decoration: const BoxDecoration(
                border: Border(
                  left: BorderSide(
                      color: Colors.black, width: 3, style: BorderStyle.solid),
                  // top: BorderSide(
                  //     color: Colors.black,
                  //     width: 3,
                  //     style: BorderStyle.solid),
                  bottom: BorderSide(
                      color: Colors.black, width: 3, style: BorderStyle.solid),
                ),
              ),
            ),
          ),
          Expanded(
            flex: _ListFlex[5],
            child: Container(
              child: widget06 ?? const SizedBox(),
              height: 47,
              decoration: const BoxDecoration(
                border: Border(
                  left: BorderSide(
                      color: Colors.black, width: 3, style: BorderStyle.solid),
                  // top: BorderSide(
                  //     color: Colors.black,
                  //     width: 3,
                  //     style: BorderStyle.solid),
                  bottom: BorderSide(
                      color: Colors.black, width: 3, style: BorderStyle.solid),
                ),
              ),
            ),
          ),
          Expanded(
            flex: _ListFlex[6],
            child: Container(
              child: widget07 ?? const SizedBox(),
              height: 47,
              decoration: const BoxDecoration(
                border: Border(
                  left: BorderSide(
                      color: Colors.black, width: 3, style: BorderStyle.solid),
                  // top: BorderSide(
                  //     color: Colors.black,
                  //     width: 3,
                  //     style: BorderStyle.solid),
                  bottom: BorderSide(
                      color: Colors.black, width: 3, style: BorderStyle.solid),
                ),
              ),
            ),
          ),
          Expanded(
            flex: _ListFlex[7],
            child: Container(
              child: widget08 ?? const SizedBox(),
              height: 47,
              decoration: const BoxDecoration(
                border: Border(
                  left: BorderSide(
                      color: Colors.black, width: 3, style: BorderStyle.solid),
                  // top: BorderSide(
                  //     color: Colors.black,
                  //     width: 3,
                  //     style: BorderStyle.solid),
                  bottom: BorderSide(
                      color: Colors.black, width: 3, style: BorderStyle.solid),
                ),
              ),
            ),
          ),
          Expanded(
            flex: _ListFlex[8],
            child: Container(
              child: widget09 ?? const SizedBox(),
              height: 47,
              decoration: const BoxDecoration(
                border: Border(
                  left: BorderSide(
                      color: Colors.black, width: 3, style: BorderStyle.solid),
                  // top: BorderSide(
                  //     color: Colors.black,
                  //     width: 3,
                  //     style: BorderStyle.solid),
                  bottom: BorderSide(
                      color: Colors.black, width: 3, style: BorderStyle.solid),
                ),
              ),
            ),
          ),
          Expanded(
            flex: _ListFlex[9],
            child: Container(
              child: widget10 ?? const SizedBox(),
              height: 47,
              decoration: const BoxDecoration(
                border: Border(
                  left: BorderSide(
                      color: Colors.black, width: 3, style: BorderStyle.solid),
                  right: BorderSide(
                      color: Colors.black, width: 3, style: BorderStyle.solid),
                  bottom: BorderSide(
                      color: Colors.black, width: 3, style: BorderStyle.solid),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class BODY10SLOTX2 extends StatelessWidget {
  BODY10SLOTX2({
    Key? key,
    this.ListFlex,
    this.widget01,
    this.widget02,
    this.widget03,
    this.widget04,
    this.widget05,
    this.widget06,
    this.widget07,
    this.widget08,
    this.widget09,
    this.widget10,
  }) : super(key: key);
  List<int>? ListFlex;
  Widget? widget01;
  Widget? widget02;
  Widget? widget03;
  Widget? widget04;
  Widget? widget05;
  Widget? widget06;
  Widget? widget07;
  Widget? widget08;
  Widget? widget09;
  Widget? widget10;

  @override
  Widget build(BuildContext context) {
    List<int> _ListFlex = ListFlex ??
        [1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1];
    return Padding(
      padding: const EdgeInsets.only(right: 8, left: 8),
      child: Row(
        children: [
          Expanded(
            flex: _ListFlex[0],
            child: Container(
              child: widget01 ?? const SizedBox(),
              height: 97,
              decoration: const BoxDecoration(
                border: Border(
                  left: BorderSide(
                      color: Colors.black, width: 3, style: BorderStyle.solid),
                  right: BorderSide(
                      color: Colors.black, width: 3, style: BorderStyle.solid),
                  bottom: BorderSide(
                      color: Colors.black, width: 3, style: BorderStyle.solid),
                ),
              ),
            ),
          ),
          Expanded(
            flex: _ListFlex[1],
            child: Container(
              child: widget02 ?? const SizedBox(),
              height: 97,
              decoration: const BoxDecoration(
                border: Border(
                  // top: BorderSide(
                  //     color: Colors.black,
                  //     width: 3,
                  //     style: BorderStyle.solid),
                  bottom: BorderSide(
                      color: Colors.black, width: 3, style: BorderStyle.solid),
                ),
              ),
            ),
          ),
          Expanded(
            flex: _ListFlex[2],
            child: Container(
              child: widget03 ?? const SizedBox(),
              height: 97,
              decoration: const BoxDecoration(
                border: Border(
                  left: BorderSide(
                      color: Colors.black, width: 3, style: BorderStyle.solid),
                  // top: BorderSide(
                  //     color: Colors.black,
                  //     width: 3,
                  //     style: BorderStyle.solid),
                  bottom: BorderSide(
                      color: Colors.black, width: 3, style: BorderStyle.solid),
                ),
              ),
            ),
          ),
          Expanded(
            flex: _ListFlex[3],
            child: Container(
              child: widget04 ?? const SizedBox(),
              height: 97,
              decoration: const BoxDecoration(
                border: Border(
                  left: BorderSide(
                      color: Colors.black, width: 3, style: BorderStyle.solid),
                  // top: BorderSide(
                  //     color: Colors.black,
                  //     width: 3,
                  //     style: BorderStyle.solid),
                  bottom: BorderSide(
                      color: Colors.black, width: 3, style: BorderStyle.solid),
                ),
              ),
            ),
          ),
          Expanded(
            flex: _ListFlex[4],
            child: Container(
              child: widget05 ?? const SizedBox(),
              height: 97,
              decoration: const BoxDecoration(
                border: Border(
                  left: BorderSide(
                      color: Colors.black, width: 3, style: BorderStyle.solid),
                  // top: BorderSide(
                  //     color: Colors.black,
                  //     width: 3,
                  //     style: BorderStyle.solid),
                  bottom: BorderSide(
                      color: Colors.black, width: 3, style: BorderStyle.solid),
                ),
              ),
            ),
          ),
          Expanded(
            flex: _ListFlex[5],
            child: Container(
              child: widget06 ?? const SizedBox(),
              height: 97,
              decoration: const BoxDecoration(
                border: Border(
                  left: BorderSide(
                      color: Colors.black, width: 3, style: BorderStyle.solid),
                  // top: BorderSide(
                  //     color: Colors.black,
                  //     width: 3,
                  //     style: BorderStyle.solid),
                  bottom: BorderSide(
                      color: Colors.black, width: 3, style: BorderStyle.solid),
                ),
              ),
            ),
          ),
          Expanded(
            flex: _ListFlex[6],
            child: Container(
              child: widget07 ?? const SizedBox(),
              height: 97,
              decoration: const BoxDecoration(
                border: Border(
                  left: BorderSide(
                      color: Colors.black, width: 3, style: BorderStyle.solid),
                  // top: BorderSide(
                  //     color: Colors.black,
                  //     width: 3,
                  //     style: BorderStyle.solid),
                  bottom: BorderSide(
                      color: Colors.black, width: 3, style: BorderStyle.solid),
                ),
              ),
            ),
          ),
          Expanded(
            flex: _ListFlex[7],
            child: Container(
              child: widget08 ?? const SizedBox(),
              height: 97,
              decoration: const BoxDecoration(
                border: Border(
                  left: BorderSide(
                      color: Colors.black, width: 3, style: BorderStyle.solid),
                  // top: BorderSide(
                  //     color: Colors.black,
                  //     width: 3,
                  //     style: BorderStyle.solid),
                  bottom: BorderSide(
                      color: Colors.black, width: 3, style: BorderStyle.solid),
                ),
              ),
            ),
          ),
          Expanded(
            flex: _ListFlex[8],
            child: Container(
              child: widget09 ?? const SizedBox(),
              height: 97,
              decoration: const BoxDecoration(
                border: Border(
                  left: BorderSide(
                      color: Colors.black, width: 3, style: BorderStyle.solid),
                  // top: BorderSide(
                  //     color: Colors.black,
                  //     width: 3,
                  //     style: BorderStyle.solid),
                  bottom: BorderSide(
                      color: Colors.black, width: 3, style: BorderStyle.solid),
                ),
              ),
            ),
          ),
          Expanded(
            flex: _ListFlex[9],
            child: Container(
              child: widget10 ?? const SizedBox(),
              height: 97,
              decoration: const BoxDecoration(
                border: Border(
                  left: BorderSide(
                      color: Colors.black, width: 3, style: BorderStyle.solid),
                  right: BorderSide(
                      color: Colors.black, width: 3, style: BorderStyle.solid),
                  bottom: BorderSide(
                      color: Colors.black, width: 3, style: BorderStyle.solid),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class HEAD16SLOT extends StatelessWidget {
  HEAD16SLOT({
    Key? key,
    this.ListFlex,
    this.widget01,
    this.widget02,
    this.widget03,
    this.widget04,
    this.widget05,
    this.widget06,
    this.widget07,
    this.widget08,
    this.widget09,
    this.widget10,
    this.widget11,
    this.widget12,
    this.widget13,
    this.widget14,
    this.widget15,
    this.widget16,
  }) : super(key: key);
  List<int>? ListFlex;
  Widget? widget01;
  Widget? widget02;
  Widget? widget03;
  Widget? widget04;
  Widget? widget05;
  Widget? widget06;
  Widget? widget07;
  Widget? widget08;
  Widget? widget09;
  Widget? widget10;
  Widget? widget11;
  Widget? widget12;
  Widget? widget13;
  Widget? widget14;
  Widget? widget15;
  Widget? widget16;

  @override
  Widget build(BuildContext context) {
    List<int> _ListFlex = ListFlex ??
        [
          1,
          1,
          1,
          1,
          1,
          1,
          1,
          1,
          1,
          1,
          1,
          1,
          1,
          1,
          1,
          1,
          1,
          1,
          1,
          1,
          1,
          1,
          1,
          1,
          1,
          1,
          1,
        ];
    return Padding(
      padding: const EdgeInsets.only(right: 8, left: 8),
      child: Row(
        children: [
          Expanded(
            flex: _ListFlex[0],
            child: Container(
              child: widget01 ?? const SizedBox(),
              height: 47,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.black, width: 3),
              ),
            ),
          ),
          Expanded(
            flex: _ListFlex[1],
            child: Container(
              child: widget02 ?? const SizedBox(),
              height: 47,
              decoration: const BoxDecoration(
                border: Border(
                  top: BorderSide(
                      color: Colors.black, width: 3, style: BorderStyle.solid),
                  bottom: BorderSide(
                      color: Colors.black, width: 3, style: BorderStyle.solid),
                ),
              ),
            ),
          ),
          Expanded(
            flex: _ListFlex[2],
            child: Container(
              child: widget03 ?? const SizedBox(),
              height: 47,
              decoration: const BoxDecoration(
                border: Border(
                  left: BorderSide(
                      color: Colors.black, width: 3, style: BorderStyle.solid),
                  top: BorderSide(
                      color: Colors.black, width: 3, style: BorderStyle.solid),
                  bottom: BorderSide(
                      color: Colors.black, width: 3, style: BorderStyle.solid),
                ),
              ),
            ),
          ),
          Expanded(
            flex: _ListFlex[3],
            child: Container(
              child: widget04 ?? const SizedBox(),
              height: 47,
              decoration: const BoxDecoration(
                border: Border(
                  left: BorderSide(
                      color: Colors.black, width: 3, style: BorderStyle.solid),
                  top: BorderSide(
                      color: Colors.black, width: 3, style: BorderStyle.solid),
                  bottom: BorderSide(
                      color: Colors.black, width: 3, style: BorderStyle.solid),
                ),
              ),
            ),
          ),
          Expanded(
            flex: _ListFlex[4],
            child: Container(
              child: widget05 ?? const SizedBox(),
              height: 47,
              decoration: const BoxDecoration(
                border: Border(
                  left: BorderSide(
                      color: Colors.black, width: 3, style: BorderStyle.solid),
                  top: BorderSide(
                      color: Colors.black, width: 3, style: BorderStyle.solid),
                  bottom: BorderSide(
                      color: Colors.black, width: 3, style: BorderStyle.solid),
                ),
              ),
            ),
          ),
          Expanded(
            flex: _ListFlex[5],
            child: Container(
              child: widget06 ?? const SizedBox(),
              height: 47,
              decoration: const BoxDecoration(
                border: Border(
                  left: BorderSide(
                      color: Colors.black, width: 3, style: BorderStyle.solid),
                  top: BorderSide(
                      color: Colors.black, width: 3, style: BorderStyle.solid),
                  bottom: BorderSide(
                      color: Colors.black, width: 3, style: BorderStyle.solid),
                ),
              ),
            ),
          ),
          Expanded(
            flex: _ListFlex[6],
            child: Container(
              child: widget07 ?? const SizedBox(),
              height: 47,
              decoration: const BoxDecoration(
                border: Border(
                  left: BorderSide(
                      color: Colors.black, width: 3, style: BorderStyle.solid),
                  top: BorderSide(
                      color: Colors.black, width: 3, style: BorderStyle.solid),
                  bottom: BorderSide(
                      color: Colors.black, width: 3, style: BorderStyle.solid),
                ),
              ),
            ),
          ),
          Expanded(
            flex: _ListFlex[7],
            child: Container(
              child: widget08 ?? const SizedBox(),
              height: 47,
              decoration: const BoxDecoration(
                border: Border(
                  left: BorderSide(
                      color: Colors.black, width: 3, style: BorderStyle.solid),
                  top: BorderSide(
                      color: Colors.black, width: 3, style: BorderStyle.solid),
                  bottom: BorderSide(
                      color: Colors.black, width: 3, style: BorderStyle.solid),
                ),
              ),
            ),
          ),
          Expanded(
            flex: _ListFlex[8],
            child: Container(
              child: widget09 ?? const SizedBox(),
              height: 47,
              decoration: const BoxDecoration(
                border: Border(
                  left: BorderSide(
                      color: Colors.black, width: 3, style: BorderStyle.solid),
                  top: BorderSide(
                      color: Colors.black, width: 3, style: BorderStyle.solid),
                  bottom: BorderSide(
                      color: Colors.black, width: 3, style: BorderStyle.solid),
                ),
              ),
            ),
          ),
          Expanded(
            flex: _ListFlex[9],
            child: Container(
              child: widget10 ?? const SizedBox(),
              decoration: const BoxDecoration(
                border: Border(
                  left: BorderSide(
                      color: Colors.black, width: 3, style: BorderStyle.solid),
                  top: BorderSide(
                      color: Colors.black, width: 3, style: BorderStyle.solid),
                  bottom: BorderSide(
                      color: Colors.black, width: 3, style: BorderStyle.solid),
                ),
              ),
              height: 47,
            ),
          ),
          Expanded(
            flex: _ListFlex[10],
            child: Container(
              child: widget11 ?? const SizedBox(),
              decoration: const BoxDecoration(
                border: Border(
                  left: BorderSide(
                      color: Colors.black, width: 3, style: BorderStyle.solid),
                  top: BorderSide(
                      color: Colors.black, width: 3, style: BorderStyle.solid),
                  bottom: BorderSide(
                      color: Colors.black, width: 3, style: BorderStyle.solid),
                ),
              ),
              height: 47,
            ),
          ),
          Expanded(
            flex: _ListFlex[11],
            child: Container(
              child: widget12 ?? const SizedBox(),
              decoration: const BoxDecoration(
                border: Border(
                  left: BorderSide(
                      color: Colors.black, width: 3, style: BorderStyle.solid),
                  top: BorderSide(
                      color: Colors.black, width: 3, style: BorderStyle.solid),
                  bottom: BorderSide(
                      color: Colors.black, width: 3, style: BorderStyle.solid),
                ),
              ),
              height: 47,
            ),
          ),
          Expanded(
            flex: _ListFlex[12],
            child: Container(
              child: widget13 ?? const SizedBox(),
              decoration: const BoxDecoration(
                border: Border(
                  left: BorderSide(
                      color: Colors.black, width: 3, style: BorderStyle.solid),
                  top: BorderSide(
                      color: Colors.black, width: 3, style: BorderStyle.solid),
                  bottom: BorderSide(
                      color: Colors.black, width: 3, style: BorderStyle.solid),
                ),
              ),
              height: 47,
            ),
          ),
          Expanded(
            flex: _ListFlex[13],
            child: Container(
              child: widget14 ?? const SizedBox(),
              decoration: const BoxDecoration(
                border: Border(
                  left: BorderSide(
                      color: Colors.black, width: 3, style: BorderStyle.solid),
                  top: BorderSide(
                      color: Colors.black, width: 3, style: BorderStyle.solid),
                  bottom: BorderSide(
                      color: Colors.black, width: 3, style: BorderStyle.solid),
                ),
              ),
              height: 47,
            ),
          ),
          Expanded(
            flex: _ListFlex[14],
            child: Container(
              child: widget15 ?? const SizedBox(),
              decoration: const BoxDecoration(
                border: Border(
                  left: BorderSide(
                      color: Colors.black, width: 3, style: BorderStyle.solid),
                  top: BorderSide(
                      color: Colors.black, width: 3, style: BorderStyle.solid),
                  bottom: BorderSide(
                      color: Colors.black, width: 3, style: BorderStyle.solid),
                ),
              ),
              height: 47,
            ),
          ),
          Expanded(
            flex: _ListFlex[15],
            child: Container(
              child: widget16 ?? const SizedBox(),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.black, width: 3),
              ),
              height: 47,
            ),
          ),
        ],
      ),
    );
  }
}

class BODY16SLOT extends StatelessWidget {
  BODY16SLOT({
    Key? key,
    this.ListFlex,
    this.widget01,
    this.widget02,
    this.widget03,
    this.widget04,
    this.widget05,
    this.widget06,
    this.widget07,
    this.widget08,
    this.widget09,
    this.widget10,
    this.widget11,
    this.widget12,
    this.widget13,
    this.widget14,
    this.widget15,
    this.widget16,
  }) : super(key: key);
  List<int>? ListFlex;
  Widget? widget01;
  Widget? widget02;
  Widget? widget03;
  Widget? widget04;
  Widget? widget05;
  Widget? widget06;
  Widget? widget07;
  Widget? widget08;
  Widget? widget09;
  Widget? widget10;
  Widget? widget11;
  Widget? widget12;
  Widget? widget13;
  Widget? widget14;
  Widget? widget15;
  Widget? widget16;

  @override
  Widget build(BuildContext context) {
    List<int> _ListFlex = ListFlex ??
        [
          1,
          1,
          1,
          1,
          1,
          1,
          1,
          1,
          1,
          1,
          1,
          1,
          1,
          1,
          1,
          1,
          1,
          1,
          1,
          1,
          1,
          1,
          1,
          1,
          1,
          1,
          1,
          1,
          1,
          1,
          1,
          1,
          1,
          1,
          1,
          1,
          1,
          1,
          1,
          1,
        ];
    return Padding(
      padding: const EdgeInsets.only(right: 8, left: 8),
      child: Row(
        children: [
          Expanded(
            flex: _ListFlex[0],
            child: Container(
              child: widget01 ?? const SizedBox(),
              height: 47,
              decoration: const BoxDecoration(
                border: Border(
                  left: BorderSide(
                      color: Colors.black, width: 3, style: BorderStyle.solid),
                  right: BorderSide(
                      color: Colors.black, width: 3, style: BorderStyle.solid),
                  bottom: BorderSide(
                      color: Colors.black, width: 3, style: BorderStyle.solid),
                ),
              ),
            ),
          ),
          Expanded(
            flex: _ListFlex[1],
            child: Container(
              child: widget02 ?? const SizedBox(),
              height: 47,
              decoration: const BoxDecoration(
                border: Border(
                  // top: BorderSide(
                  //     color: Colors.black,
                  //     width: 3,
                  //     style: BorderStyle.solid),
                  bottom: BorderSide(
                      color: Colors.black, width: 3, style: BorderStyle.solid),
                ),
              ),
            ),
          ),
          Expanded(
            flex: _ListFlex[2],
            child: Container(
              child: widget03 ?? const SizedBox(),
              height: 47,
              decoration: const BoxDecoration(
                border: Border(
                  left: BorderSide(
                      color: Colors.black, width: 3, style: BorderStyle.solid),
                  // top: BorderSide(
                  //     color: Colors.black,
                  //     width: 3,
                  //     style: BorderStyle.solid),
                  bottom: BorderSide(
                      color: Colors.black, width: 3, style: BorderStyle.solid),
                ),
              ),
            ),
          ),
          Expanded(
            flex: _ListFlex[3],
            child: Container(
              child: widget04 ?? const SizedBox(),
              height: 47,
              decoration: const BoxDecoration(
                border: Border(
                  left: BorderSide(
                      color: Colors.black, width: 3, style: BorderStyle.solid),
                  // top: BorderSide(
                  //     color: Colors.black,
                  //     width: 3,
                  //     style: BorderStyle.solid),
                  bottom: BorderSide(
                      color: Colors.black, width: 3, style: BorderStyle.solid),
                ),
              ),
            ),
          ),
          Expanded(
            flex: _ListFlex[4],
            child: Container(
              child: widget05 ?? const SizedBox(),
              height: 47,
              decoration: const BoxDecoration(
                border: Border(
                  left: BorderSide(
                      color: Colors.black, width: 3, style: BorderStyle.solid),
                  // top: BorderSide(
                  //     color: Colors.black,
                  //     width: 3,
                  //     style: BorderStyle.solid),
                  bottom: BorderSide(
                      color: Colors.black, width: 3, style: BorderStyle.solid),
                ),
              ),
            ),
          ),
          Expanded(
            flex: _ListFlex[5],
            child: Container(
              child: widget06 ?? const SizedBox(),
              height: 47,
              decoration: const BoxDecoration(
                border: Border(
                  left: BorderSide(
                      color: Colors.black, width: 3, style: BorderStyle.solid),
                  // top: BorderSide(
                  //     color: Colors.black,
                  //     width: 3,
                  //     style: BorderStyle.solid),
                  bottom: BorderSide(
                      color: Colors.black, width: 3, style: BorderStyle.solid),
                ),
              ),
            ),
          ),
          Expanded(
            flex: _ListFlex[6],
            child: Container(
              child: widget07 ?? const SizedBox(),
              height: 47,
              decoration: const BoxDecoration(
                border: Border(
                  left: BorderSide(
                      color: Colors.black, width: 3, style: BorderStyle.solid),
                  // top: BorderSide(
                  //     color: Colors.black,
                  //     width: 3,
                  //     style: BorderStyle.solid),
                  bottom: BorderSide(
                      color: Colors.black, width: 3, style: BorderStyle.solid),
                ),
              ),
            ),
          ),
          Expanded(
            flex: _ListFlex[7],
            child: Container(
              child: widget08 ?? const SizedBox(),
              height: 47,
              decoration: const BoxDecoration(
                border: Border(
                  left: BorderSide(
                      color: Colors.black, width: 3, style: BorderStyle.solid),
                  // top: BorderSide(
                  //     color: Colors.black,
                  //     width: 3,
                  //     style: BorderStyle.solid),
                  bottom: BorderSide(
                      color: Colors.black, width: 3, style: BorderStyle.solid),
                ),
              ),
            ),
          ),
          Expanded(
            flex: _ListFlex[8],
            child: Container(
              child: widget09 ?? const SizedBox(),
              height: 47,
              decoration: const BoxDecoration(
                border: Border(
                  left: BorderSide(
                      color: Colors.black, width: 3, style: BorderStyle.solid),
                  // top: BorderSide(
                  //     color: Colors.black,
                  //     width: 3,
                  //     style: BorderStyle.solid),
                  bottom: BorderSide(
                      color: Colors.black, width: 3, style: BorderStyle.solid),
                ),
              ),
            ),
          ),
          Expanded(
            flex: _ListFlex[9],
            child: Container(
              child: widget10 ?? const SizedBox(),
              height: 47,
              decoration: const BoxDecoration(
                border: Border(
                  left: BorderSide(
                      color: Colors.black, width: 3, style: BorderStyle.solid),
                  // right: BorderSide(
                  //     color: Colors.black, width: 3, style: BorderStyle.solid),
                  bottom: BorderSide(
                      color: Colors.black, width: 3, style: BorderStyle.solid),
                ),
              ),
            ),
          ),
          Expanded(
            flex: _ListFlex[10],
            child: Container(
              child: widget11 ?? const SizedBox(),
              height: 47,
              decoration: const BoxDecoration(
                border: Border(
                  left: BorderSide(
                      color: Colors.black, width: 3, style: BorderStyle.solid),
                  // right: BorderSide(
                  //     color: Colors.black, width: 3, style: BorderStyle.solid),
                  bottom: BorderSide(
                      color: Colors.black, width: 3, style: BorderStyle.solid),
                ),
              ),
            ),
          ),
          Expanded(
            flex: _ListFlex[11],
            child: Container(
              child: widget12 ?? const SizedBox(),
              height: 47,
              decoration: const BoxDecoration(
                border: Border(
                  left: BorderSide(
                      color: Colors.black, width: 3, style: BorderStyle.solid),
                  // right: BorderSide(
                  //     color: Colors.black, width: 3, style: BorderStyle.solid),
                  bottom: BorderSide(
                      color: Colors.black, width: 3, style: BorderStyle.solid),
                ),
              ),
            ),
          ),
          Expanded(
            flex: _ListFlex[12],
            child: Container(
              child: widget13 ?? const SizedBox(),
              height: 47,
              decoration: const BoxDecoration(
                border: Border(
                  left: BorderSide(
                      color: Colors.black, width: 3, style: BorderStyle.solid),
                  // right: BorderSide(
                  //     color: Colors.black, width: 3, style: BorderStyle.solid),
                  bottom: BorderSide(
                      color: Colors.black, width: 3, style: BorderStyle.solid),
                ),
              ),
            ),
          ),
          Expanded(
            flex: _ListFlex[13],
            child: Container(
              child: widget14 ?? const SizedBox(),
              height: 47,
              decoration: const BoxDecoration(
                border: Border(
                  left: BorderSide(
                      color: Colors.black, width: 3, style: BorderStyle.solid),
                  // right: BorderSide(
                  //     color: Colors.black, width: 3, style: BorderStyle.solid),
                  bottom: BorderSide(
                      color: Colors.black, width: 3, style: BorderStyle.solid),
                ),
              ),
            ),
          ),
          Expanded(
            flex: _ListFlex[14],
            child: Container(
              child: widget15 ?? const SizedBox(),
              height: 47,
              decoration: const BoxDecoration(
                border: Border(
                  left: BorderSide(
                      color: Colors.black, width: 3, style: BorderStyle.solid),
                  // right: BorderSide(
                  //     color: Colors.black, width: 3, style: BorderStyle.solid),
                  bottom: BorderSide(
                      color: Colors.black, width: 3, style: BorderStyle.solid),
                ),
              ),
            ),
          ),
          Expanded(
            flex: _ListFlex[15],
            child: Container(
              child: widget16 ?? const SizedBox(),
              height: 47,
              decoration: const BoxDecoration(
                border: Border(
                  left: BorderSide(
                      color: Colors.black, width: 3, style: BorderStyle.solid),
                  right: BorderSide(
                      color: Colors.black, width: 3, style: BorderStyle.solid),
                  bottom: BorderSide(
                      color: Colors.black, width: 3, style: BorderStyle.solid),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class HEAD9SLOT extends StatelessWidget {
  HEAD9SLOT({
    Key? key,
    this.ListFlex,
    this.widget01,
    this.widget02,
    this.widget03,
    this.widget04,
    this.widget05,
    this.widget06,
    this.widget07,
    this.widget08,
    this.widget09,
  }) : super(key: key);
  List<int>? ListFlex;
  Widget? widget01;
  Widget? widget02;
  Widget? widget03;
  Widget? widget04;
  Widget? widget05;
  Widget? widget06;
  Widget? widget07;
  Widget? widget08;
  Widget? widget09;

  @override
  Widget build(BuildContext context) {
    List<int> _ListFlex = ListFlex ??
        [1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1];
    return Padding(
      padding: const EdgeInsets.only(right: 8, left: 8),
      child: Row(
        children: [
          Expanded(
            flex: _ListFlex[0],
            child: Container(
              child: widget01 ?? const SizedBox(),
              height: 47,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.black, width: 3),
              ),
            ),
          ),
          Expanded(
            flex: _ListFlex[1],
            child: Container(
              child: widget02 ?? const SizedBox(),
              height: 47,
              decoration: const BoxDecoration(
                border: Border(
                  top: BorderSide(
                      color: Colors.black, width: 3, style: BorderStyle.solid),
                  bottom: BorderSide(
                      color: Colors.black, width: 3, style: BorderStyle.solid),
                ),
              ),
            ),
          ),
          Expanded(
            flex: _ListFlex[2],
            child: Container(
              child: widget03 ?? const SizedBox(),
              height: 47,
              decoration: const BoxDecoration(
                border: Border(
                  left: BorderSide(
                      color: Colors.black, width: 3, style: BorderStyle.solid),
                  top: BorderSide(
                      color: Colors.black, width: 3, style: BorderStyle.solid),
                  bottom: BorderSide(
                      color: Colors.black, width: 3, style: BorderStyle.solid),
                ),
              ),
            ),
          ),
          Expanded(
            flex: _ListFlex[3],
            child: Container(
              child: widget04 ?? const SizedBox(),
              height: 47,
              decoration: const BoxDecoration(
                border: Border(
                  left: BorderSide(
                      color: Colors.black, width: 3, style: BorderStyle.solid),
                  top: BorderSide(
                      color: Colors.black, width: 3, style: BorderStyle.solid),
                  bottom: BorderSide(
                      color: Colors.black, width: 3, style: BorderStyle.solid),
                ),
              ),
            ),
          ),
          Expanded(
            flex: _ListFlex[4],
            child: Container(
              child: widget05 ?? const SizedBox(),
              height: 47,
              decoration: const BoxDecoration(
                border: Border(
                  left: BorderSide(
                      color: Colors.black, width: 3, style: BorderStyle.solid),
                  top: BorderSide(
                      color: Colors.black, width: 3, style: BorderStyle.solid),
                  bottom: BorderSide(
                      color: Colors.black, width: 3, style: BorderStyle.solid),
                ),
              ),
            ),
          ),
          Expanded(
            flex: _ListFlex[5],
            child: Container(
              child: widget06 ?? const SizedBox(),
              height: 47,
              decoration: const BoxDecoration(
                border: Border(
                  left: BorderSide(
                      color: Colors.black, width: 3, style: BorderStyle.solid),
                  top: BorderSide(
                      color: Colors.black, width: 3, style: BorderStyle.solid),
                  bottom: BorderSide(
                      color: Colors.black, width: 3, style: BorderStyle.solid),
                ),
              ),
            ),
          ),
          Expanded(
            flex: _ListFlex[6],
            child: Container(
              child: widget07 ?? const SizedBox(),
              height: 47,
              decoration: const BoxDecoration(
                border: Border(
                  left: BorderSide(
                      color: Colors.black, width: 3, style: BorderStyle.solid),
                  top: BorderSide(
                      color: Colors.black, width: 3, style: BorderStyle.solid),
                  bottom: BorderSide(
                      color: Colors.black, width: 3, style: BorderStyle.solid),
                ),
              ),
            ),
          ),
          Expanded(
            flex: _ListFlex[7],
            child: Container(
              child: widget08 ?? const SizedBox(),
              height: 47,
              decoration: const BoxDecoration(
                border: Border(
                  left: BorderSide(
                      color: Colors.black, width: 3, style: BorderStyle.solid),
                  top: BorderSide(
                      color: Colors.black, width: 3, style: BorderStyle.solid),
                  bottom: BorderSide(
                      color: Colors.black, width: 3, style: BorderStyle.solid),
                ),
              ),
            ),
          ),
          Expanded(
            flex: _ListFlex[8],
            child: Container(
              child: widget09 ?? const SizedBox(),
              height: 47,
              decoration: const BoxDecoration(
                border: Border(
                  left: BorderSide(
                      color: Colors.black, width: 3, style: BorderStyle.solid),
                  top: BorderSide(
                      color: Colors.black, width: 3, style: BorderStyle.solid),
                  bottom: BorderSide(
                      color: Colors.black, width: 3, style: BorderStyle.solid),
                  right: BorderSide(
                      color: Colors.black, width: 3, style: BorderStyle.solid),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class BODY9SLOT extends StatelessWidget {
  BODY9SLOT({
    Key? key,
    this.ListFlex,
    this.widget01,
    this.widget02,
    this.widget03,
    this.widget04,
    this.widget05,
    this.widget06,
    this.widget07,
    this.widget08,
    this.widget09,
  }) : super(key: key);
  List<int>? ListFlex;
  Widget? widget01;
  Widget? widget02;
  Widget? widget03;
  Widget? widget04;
  Widget? widget05;
  Widget? widget06;
  Widget? widget07;
  Widget? widget08;
  Widget? widget09;

  @override
  Widget build(BuildContext context) {
    List<int> _ListFlex = ListFlex ??
        [1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1];
    return Padding(
      padding: const EdgeInsets.only(right: 8, left: 8),
      child: Row(
        children: [
          Expanded(
            flex: _ListFlex[0],
            child: Container(
              child: widget01 ?? const SizedBox(),
              height: 47,
              decoration: const BoxDecoration(
                border: Border(
                  left: BorderSide(
                      color: Colors.black, width: 3, style: BorderStyle.solid),
                  right: BorderSide(
                      color: Colors.black, width: 3, style: BorderStyle.solid),
                  bottom: BorderSide(
                      color: Colors.black, width: 3, style: BorderStyle.solid),
                ),
              ),
            ),
          ),
          Expanded(
            flex: _ListFlex[1],
            child: Container(
              child: widget02 ?? const SizedBox(),
              height: 47,
              decoration: const BoxDecoration(
                border: Border(
                  // top: BorderSide(
                  //     color: Colors.black,
                  //     width: 3,
                  //     style: BorderStyle.solid),
                  bottom: BorderSide(
                      color: Colors.black, width: 3, style: BorderStyle.solid),
                ),
              ),
            ),
          ),
          Expanded(
            flex: _ListFlex[2],
            child: Container(
              child: widget03 ?? const SizedBox(),
              height: 47,
              decoration: const BoxDecoration(
                border: Border(
                  left: BorderSide(
                      color: Colors.black, width: 3, style: BorderStyle.solid),
                  // top: BorderSide(
                  //     color: Colors.black,
                  //     width: 3,
                  //     style: BorderStyle.solid),
                  bottom: BorderSide(
                      color: Colors.black, width: 3, style: BorderStyle.solid),
                ),
              ),
            ),
          ),
          Expanded(
            flex: _ListFlex[3],
            child: Container(
              child: widget04 ?? const SizedBox(),
              height: 47,
              decoration: const BoxDecoration(
                border: Border(
                  left: BorderSide(
                      color: Colors.black, width: 3, style: BorderStyle.solid),
                  // top: BorderSide(
                  //     color: Colors.black,
                  //     width: 3,
                  //     style: BorderStyle.solid),
                  bottom: BorderSide(
                      color: Colors.black, width: 3, style: BorderStyle.solid),
                ),
              ),
            ),
          ),
          Expanded(
            flex: _ListFlex[4],
            child: Container(
              child: widget05 ?? const SizedBox(),
              height: 47,
              decoration: const BoxDecoration(
                border: Border(
                  left: BorderSide(
                      color: Colors.black, width: 3, style: BorderStyle.solid),
                  // top: BorderSide(
                  //     color: Colors.black,
                  //     width: 3,
                  //     style: BorderStyle.solid),
                  bottom: BorderSide(
                      color: Colors.black, width: 3, style: BorderStyle.solid),
                ),
              ),
            ),
          ),
          Expanded(
            flex: _ListFlex[5],
            child: Container(
              child: widget06 ?? const SizedBox(),
              height: 47,
              decoration: const BoxDecoration(
                border: Border(
                  left: BorderSide(
                      color: Colors.black, width: 3, style: BorderStyle.solid),
                  // top: BorderSide(
                  //     color: Colors.black,
                  //     width: 3,
                  //     style: BorderStyle.solid),
                  bottom: BorderSide(
                      color: Colors.black, width: 3, style: BorderStyle.solid),
                ),
              ),
            ),
          ),
          Expanded(
            flex: _ListFlex[6],
            child: Container(
              child: widget07 ?? const SizedBox(),
              height: 47,
              decoration: const BoxDecoration(
                border: Border(
                  left: BorderSide(
                      color: Colors.black, width: 3, style: BorderStyle.solid),
                  // top: BorderSide(
                  //     color: Colors.black,
                  //     width: 3,
                  //     style: BorderStyle.solid),
                  bottom: BorderSide(
                      color: Colors.black, width: 3, style: BorderStyle.solid),
                ),
              ),
            ),
          ),
          Expanded(
            flex: _ListFlex[7],
            child: Container(
              child: widget08 ?? const SizedBox(),
              height: 47,
              decoration: const BoxDecoration(
                border: Border(
                  left: BorderSide(
                      color: Colors.black, width: 3, style: BorderStyle.solid),
                  // top: BorderSide(
                  //     color: Colors.black,
                  //     width: 3,
                  //     style: BorderStyle.solid),
                  bottom: BorderSide(
                      color: Colors.black, width: 3, style: BorderStyle.solid),
                ),
              ),
            ),
          ),
          Expanded(
            flex: _ListFlex[8],
            child: Container(
              child: widget09 ?? const SizedBox(),
              height: 47,
              decoration: const BoxDecoration(
                border: Border(
                  left: BorderSide(
                      color: Colors.black, width: 3, style: BorderStyle.solid),
                  // top: BorderSide(
                  //     color: Colors.black,
                  //     width: 3,
                  //     style: BorderStyle.solid),
                  bottom: BorderSide(
                      color: Colors.black, width: 3, style: BorderStyle.solid),
                  right: BorderSide(
                      color: Colors.black, width: 3, style: BorderStyle.solid),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class BODY9SLOTX2 extends StatelessWidget {
  BODY9SLOTX2({
    Key? key,
    this.ListFlex,
    this.widget01,
    this.widget02,
    this.widget03,
    this.widget04,
    this.widget05,
    this.widget06,
    this.widget07,
    this.widget08,
    this.widget09,
  }) : super(key: key);
  List<int>? ListFlex;
  Widget? widget01;
  Widget? widget02;
  Widget? widget03;
  Widget? widget04;
  Widget? widget05;
  Widget? widget06;
  Widget? widget07;
  Widget? widget08;
  Widget? widget09;

  @override
  Widget build(BuildContext context) {
    List<int> _ListFlex = ListFlex ??
        [1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1];
    return Padding(
      padding: const EdgeInsets.only(right: 8, left: 8),
      child: Row(
        children: [
          Expanded(
            flex: _ListFlex[0],
            child: Container(
              child: widget01 ?? const SizedBox(),
              height: 97,
              decoration: const BoxDecoration(
                border: Border(
                  left: BorderSide(
                      color: Colors.black, width: 3, style: BorderStyle.solid),
                  right: BorderSide(
                      color: Colors.black, width: 3, style: BorderStyle.solid),
                  bottom: BorderSide(
                      color: Colors.black, width: 3, style: BorderStyle.solid),
                ),
              ),
            ),
          ),
          Expanded(
            flex: _ListFlex[1],
            child: Container(
              child: widget02 ?? const SizedBox(),
              height: 97,
              decoration: const BoxDecoration(
                border: Border(
                  // top: BorderSide(
                  //     color: Colors.black,
                  //     width: 3,
                  //     style: BorderStyle.solid),
                  bottom: BorderSide(
                      color: Colors.black, width: 3, style: BorderStyle.solid),
                ),
              ),
            ),
          ),
          Expanded(
            flex: _ListFlex[2],
            child: Container(
              child: widget03 ?? const SizedBox(),
              height: 97,
              decoration: const BoxDecoration(
                border: Border(
                  left: BorderSide(
                      color: Colors.black, width: 3, style: BorderStyle.solid),
                  // top: BorderSide(
                  //     color: Colors.black,
                  //     width: 3,
                  //     style: BorderStyle.solid),
                  bottom: BorderSide(
                      color: Colors.black, width: 3, style: BorderStyle.solid),
                ),
              ),
            ),
          ),
          Expanded(
            flex: _ListFlex[3],
            child: Container(
              child: widget04 ?? const SizedBox(),
              height: 97,
              decoration: const BoxDecoration(
                border: Border(
                  left: BorderSide(
                      color: Colors.black, width: 3, style: BorderStyle.solid),
                  // top: BorderSide(
                  //     color: Colors.black,
                  //     width: 3,
                  //     style: BorderStyle.solid),
                  bottom: BorderSide(
                      color: Colors.black, width: 3, style: BorderStyle.solid),
                ),
              ),
            ),
          ),
          Expanded(
            flex: _ListFlex[4],
            child: Container(
              child: widget05 ?? const SizedBox(),
              height: 97,
              decoration: const BoxDecoration(
                border: Border(
                  left: BorderSide(
                      color: Colors.black, width: 3, style: BorderStyle.solid),
                  // top: BorderSide(
                  //     color: Colors.black,
                  //     width: 3,
                  //     style: BorderStyle.solid),
                  bottom: BorderSide(
                      color: Colors.black, width: 3, style: BorderStyle.solid),
                ),
              ),
            ),
          ),
          Expanded(
            flex: _ListFlex[5],
            child: Container(
              child: widget06 ?? const SizedBox(),
              height: 97,
              decoration: const BoxDecoration(
                border: Border(
                  left: BorderSide(
                      color: Colors.black, width: 3, style: BorderStyle.solid),
                  // top: BorderSide(
                  //     color: Colors.black,
                  //     width: 3,
                  //     style: BorderStyle.solid),
                  bottom: BorderSide(
                      color: Colors.black, width: 3, style: BorderStyle.solid),
                ),
              ),
            ),
          ),
          Expanded(
            flex: _ListFlex[6],
            child: Container(
              child: widget07 ?? const SizedBox(),
              height: 97,
              decoration: const BoxDecoration(
                border: Border(
                  left: BorderSide(
                      color: Colors.black, width: 3, style: BorderStyle.solid),
                  // top: BorderSide(
                  //     color: Colors.black,
                  //     width: 3,
                  //     style: BorderStyle.solid),
                  bottom: BorderSide(
                      color: Colors.black, width: 3, style: BorderStyle.solid),
                ),
              ),
            ),
          ),
          Expanded(
            flex: _ListFlex[7],
            child: Container(
              child: widget08 ?? const SizedBox(),
              height: 97,
              decoration: const BoxDecoration(
                border: Border(
                  left: BorderSide(
                      color: Colors.black, width: 3, style: BorderStyle.solid),
                  // top: BorderSide(
                  //     color: Colors.black,
                  //     width: 3,
                  //     style: BorderStyle.solid),
                  bottom: BorderSide(
                      color: Colors.black, width: 3, style: BorderStyle.solid),
                ),
              ),
            ),
          ),
          Expanded(
            flex: _ListFlex[8],
            child: Container(
              child: widget09 ?? const SizedBox(),
              height: 97,
              decoration: const BoxDecoration(
                border: Border(
                  left: BorderSide(
                      color: Colors.black, width: 3, style: BorderStyle.solid),
                  // top: BorderSide(
                  //     color: Colors.black,
                  //     width: 3,
                  //     style: BorderStyle.solid),
                  bottom: BorderSide(
                      color: Colors.black, width: 3, style: BorderStyle.solid),
                  right: BorderSide(
                      color: Colors.black, width: 3, style: BorderStyle.solid),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
