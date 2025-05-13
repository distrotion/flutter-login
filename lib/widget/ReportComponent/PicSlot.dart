import 'package:flutter/material.dart';

import '../common/imgset.dart';

class PICSLOT extends StatelessWidget {
  PICSLOT({
    Key? key,
    this.PIC01,
    this.PIC02,
    this.HIs,
  }) : super(key: key);
  String? PIC01;
  String? PIC02;
  double? HIs;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 12, bottom: 12, right: 8, left: 8),
      child: Row(
        children: [
          Expanded(
            flex: 1,
            child: Container(
              height: HIs ?? 440,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.black, width: 3),
              ),
              child: Row(
                children: [
                  if (PIC01 != '') ...[
                    PicShowAct(width: 400, height: 300, base64: PIC01 ?? ''),
                  ],
                  if (PIC02 != NOPIC) ...[
                    PicShowAct(width: 400, height: 300, base64: PIC02 ?? ''),
                  ],
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class PICSLO2SIDE extends StatelessWidget {
  PICSLO2SIDE({
    Key? key,
    this.PIC01,
    this.PIC02,
    this.widget01,
    this.HIs,
  }) : super(key: key);
  String? PIC01;
  String? PIC02;
  Widget? widget01;
  double? HIs;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 12, bottom: 12, right: 8),
      child: Row(
        children: [
          Expanded(
            flex: 1,
            child: Padding(
              padding: const EdgeInsets.only(right: 5),
              child: SizedBox(
                height: HIs ?? 440,
                // decoration: BoxDecoration(
                //   border: Border.all(color: Colors.black, width: 3),
                // ),
                child: widget01 ?? SizedBox(),
              ),
            ),
          ),
          Expanded(
            flex: 1,
            child: Padding(
              padding: const EdgeInsets.only(left: 5),
              child: SizedBox(
                height: HIs ?? 440,
                // decoration: BoxDecoration(
                //   border: Border.all(color: Colors.black, width: 3),
                // ),
                child: Column(
                  children: [
                    Expanded(
                      flex: 1,
                      child: Padding(
                        padding: const EdgeInsets.only(bottom: 10),
                        child: Container(
                          height: (HIs ?? 440) * 0.15,
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.black, width: 3),
                          ),
                          child: const Center(
                            child: Text(
                              "Microstructure",
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Row(
                      children: [
                        Expanded(
                          flex: 1,
                          child: Padding(
                            padding: const EdgeInsets.only(right: 2),
                            child: Container(
                              height: (HIs ?? 440) * 0.85,
                              decoration: BoxDecoration(
                                border:
                                    Border.all(color: Colors.black, width: 3),
                              ),
                              child: PicShowAct(
                                  width: 400, height: 300, base64: PIC01 ?? ''),
                            ),
                          ),
                        ),
                        Expanded(
                          flex: 1,
                          child: Padding(
                            padding: const EdgeInsets.only(left: 2),
                            child: Container(
                              height: (HIs ?? 440) * 0.85,
                              decoration: BoxDecoration(
                                border:
                                    Border.all(color: Colors.black, width: 3),
                              ),
                              child: PicShowAct(
                                  width: 400, height: 300, base64: PIC02 ?? ''),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class PICSLO2SIDEGRAPH extends StatelessWidget {
  PICSLO2SIDEGRAPH({
    Key? key,
    this.PIC01,
    this.PIC02,
    this.widget01,
    this.widget02,
    this.HIs,
  }) : super(key: key);
  String? PIC01;
  String? PIC02;
  Widget? widget01;
  Widget? widget02;
  double? HIs;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 12, bottom: 12, right: 8),
      child: Column(
        children: [
          Row(
            children: [
              Expanded(
                flex: 1,
                child: Padding(
                  padding: const EdgeInsets.only(right: 5),
                  child: SizedBox(
                    height: 340,
                    // decoration: BoxDecoration(
                    //   border: Border.all(color: Colors.black, width: 3),
                    // ),
                    child: widget01 ?? SizedBox(),
                  ),
                ),
              ),
              Expanded(
                flex: 1,
                child: Padding(
                  padding: const EdgeInsets.only(left: 5),
                  child: SizedBox(
                    height: 340,
                    // decoration: BoxDecoration(
                    //   border: Border.all(color: Colors.black, width: 3),
                    // ),
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(bottom: 10),
                          child: Container(
                            height: 40,
                            decoration: BoxDecoration(
                              border: Border.all(color: Colors.black, width: 3),
                            ),
                            child: const Center(
                              child: Text(
                                "Microstructure",
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ),
                        ),
                        Row(
                          children: [
                            Expanded(
                              flex: 1,
                              child: Padding(
                                padding: const EdgeInsets.only(right: 2),
                                child: Container(
                                  height: 270,
                                  decoration: BoxDecoration(
                                    border: Border.all(
                                        color: Colors.black, width: 3),
                                  ),
                                  child: PicShow(
                                      width: 306,
                                      height: 230,
                                      base64: PIC01 ?? ''),
                                ),
                              ),
                            ),
                            Expanded(
                              flex: 1,
                              child: Padding(
                                padding: const EdgeInsets.only(left: 2),
                                child: Container(
                                  height: 270,
                                  decoration: BoxDecoration(
                                    border: Border.all(
                                        color: Colors.black, width: 3),
                                  ),
                                  child: PicShow(
                                    width: 306,
                                    height: 230,
                                    base64: PIC02 ?? '',
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
          widget02 ?? SizedBox(),
        ],
      ),
    );
  }
}

class GRAPH2SIDEGRAPH extends StatelessWidget {
  GRAPH2SIDEGRAPH({
    Key? key,
    this.widget01,
    this.widget02,
    this.widget03,
    this.HIs,
  }) : super(key: key);

  Widget? widget01;
  Widget? widget02;
  Widget? widget03;
  double? HIs;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 12, bottom: 12, right: 8),
      child: Column(
        children: [
          Row(
            children: [
              Expanded(
                flex: 1,
                child: Padding(
                  padding: const EdgeInsets.only(right: 5),
                  child: SizedBox(
                    height: 340,
                    // decoration: BoxDecoration(
                    //   border: Border.all(color: Colors.black, width: 3),
                    // ),
                    child: widget01 ?? SizedBox(),
                  ),
                ),
              ),
              Expanded(
                flex: 1,
                child: Padding(
                  padding: const EdgeInsets.only(left: 5),
                  child: SizedBox(
                    height: 340,
                    // decoration: BoxDecoration(
                    //   border: Border.all(color: Colors.black, width: 3),
                    // ),
                    child: widget02 ?? SizedBox(),
                  ),
                ),
              ),
            ],
          ),
          widget03 ?? SizedBox(),
        ],
      ),
    );
  }
}

class PICSLO3NOSIDEGRAPH extends StatelessWidget {
  PICSLO3NOSIDEGRAPH({
    Key? key,
    this.PIC01,
    this.PIC02,
    this.PIC03,
    // this.widget01,
    // this.widget02,
    this.HIs,
  }) : super(key: key);
  String? PIC01;
  String? PIC02;
  String? PIC03;
  // Widget? widget01;
  // Widget? widget02;
  double? HIs;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 12, bottom: 12, right: 8),
      child: Column(
        children: [
          Row(
            children: [
              Expanded(
                flex: 1,
                child: Padding(
                  padding: const EdgeInsets.only(left: 5),
                  child: SizedBox(
                    height: 380,
                    // decoration: BoxDecoration(
                    //   border: Border.all(color: Colors.black, width: 3),
                    // ),
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(bottom: 10),
                          child: Container(
                            height: 40,
                            decoration: BoxDecoration(
                              border: Border.all(color: Colors.black, width: 3),
                            ),
                            child: const Center(
                              child: Text(
                                "Microstructure",
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ),
                        ),
                        Row(
                          children: [
                            Expanded(
                              flex: 1,
                              child: Padding(
                                padding: const EdgeInsets.only(right: 2),
                                child: Column(
                                  children: [
                                    Container(
                                      height: 270,
                                      decoration: BoxDecoration(
                                        border: Border.all(
                                            color: Colors.black, width: 3),
                                      ),
                                      child: PicShowAct(
                                          width: 306,
                                          height: 230,
                                          base64: PIC01 ?? ''),
                                    ),
                                    SizedBox(
                                      height: 4,
                                    ),
                                    Container(
                                      height: 40,
                                      decoration: BoxDecoration(
                                        border: Border.all(
                                            color: Colors.black, width: 3),
                                      ),
                                      child: const Center(
                                        child: Text(
                                          "",
                                          style: TextStyle(
                                            fontSize: 20,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ),
                            Expanded(
                              flex: 1,
                              child: Column(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(left: 2),
                                    child: Container(
                                      height: 270,
                                      decoration: BoxDecoration(
                                        border: Border.all(
                                            color: Colors.black, width: 3),
                                      ),
                                      child: PicShowAct(
                                          width: 306,
                                          height: 230,
                                          base64: PIC02 ?? ''),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 4,
                                  ),
                                  Container(
                                    height: 40,
                                    decoration: BoxDecoration(
                                      border: Border.all(
                                          color: Colors.black, width: 3),
                                    ),
                                    child: const Center(
                                      child: Text(
                                        "",
                                        style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ),
                            Expanded(
                              flex: 1,
                              child: Padding(
                                padding: const EdgeInsets.only(left: 2),
                                child: Column(
                                  children: [
                                    Container(
                                      height: 270,
                                      decoration: BoxDecoration(
                                        border: Border.all(
                                            color: Colors.black, width: 3),
                                      ),
                                      child: PicShowAct(
                                          width: 306,
                                          height: 230,
                                          base64: PIC03 ?? ''),
                                    ),
                                    SizedBox(
                                      height: 4,
                                    ),
                                    Container(
                                      height: 40,
                                      decoration: BoxDecoration(
                                        border: Border.all(
                                            color: Colors.black, width: 3),
                                      ),
                                      child: const Center(
                                        child: Text(
                                          "",
                                          style: TextStyle(
                                            fontSize: 20,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
          // widget02 ?? SizedBox(),
        ],
      ),
    );
  }
}

class PICSLO2NORMAL extends StatelessWidget {
  PICSLO2NORMAL({
    Key? key,
    this.PIC01,
    this.ITEMPIC01,
    this.PIC02,
    this.ITEMPIC02,
    this.widget01,
    this.widget02,
    this.HIs,
  }) : super(key: key);
  String? PIC01;
  String? ITEMPIC01;
  String? PIC02;
  String? ITEMPIC02;
  Widget? widget01;
  Widget? widget02;
  double? HIs;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 6, bottom: 0, right: 8),
      child: Column(
        children: [
          Row(
            children: [
              // Expanded(
              //   flex: 1,
              //   child: Padding(
              //     padding: const EdgeInsets.only(right: 5),
              //     child: SizedBox(
              //       height: 340,
              //       // decoration: BoxDecoration(
              //       //   border: Border.all(color: Colors.black, width: 3),
              //       // ),
              //       child: widget01 ?? SizedBox(),
              //     ),
              //   ),
              // ),
              Expanded(
                flex: 1,
                child: Padding(
                  padding: const EdgeInsets.only(left: 5),
                  child: SizedBox(
                    height: 470,
                    // decoration: BoxDecoration(
                    //   border: Border.all(color: Colors.black, width: 3),
                    // ),
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(bottom: 5),
                          child: Container(
                            height: 40,
                            decoration: BoxDecoration(
                              border: Border.all(color: Colors.black, width: 3),
                            ),
                            child: const Center(
                              child: Text(
                                "Microstructure",
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ),
                        ),
                        Row(
                          children: [
                            Expanded(
                              flex: 1,
                              child: Padding(
                                padding: const EdgeInsets.only(right: 2),
                                child: Container(
                                  height: 380,
                                  decoration: BoxDecoration(
                                    border: Border.all(
                                        color: Colors.black, width: 3),
                                  ),
                                  child: PicShowAct(
                                      width: 700 * 0.7,
                                      height: 500 * 0.7,
                                      base64: PIC01 ?? ''),
                                ),
                              ),
                            ),
                            Expanded(
                              flex: 1,
                              child: Padding(
                                padding: const EdgeInsets.only(left: 2),
                                child: Container(
                                  height: 380,
                                  decoration: BoxDecoration(
                                    border: Border.all(
                                        color: Colors.black, width: 3),
                                  ),
                                  child: PicShowAct(
                                      width: 304,
                                      height: 250,
                                      base64: PIC02 ?? ''),
                                ),
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Expanded(
                              flex: 1,
                              child: Padding(
                                padding: const EdgeInsets.only(right: 2),
                                child: Container(
                                  height: 30,
                                  decoration: BoxDecoration(
                                    border: Border(
                                      left: BorderSide(
                                          color: Colors.black,
                                          width: 3,
                                          style: BorderStyle.solid),
                                      right: BorderSide(
                                          color: Colors.black,
                                          width: 3,
                                          style: BorderStyle.solid),
                                      bottom: BorderSide(
                                          color: Colors.black,
                                          width: 3,
                                          style: BorderStyle.solid),
                                    ),
                                  ),
                                  child: Center(child: Text(ITEMPIC01 ?? '')),
                                ),
                              ),
                            ),
                            Expanded(
                              flex: 1,
                              child: Padding(
                                padding: const EdgeInsets.only(left: 2),
                                child: Container(
                                  height: 30,
                                  decoration: BoxDecoration(
                                    border: Border(
                                      left: BorderSide(
                                          color: Colors.black,
                                          width: 3,
                                          style: BorderStyle.solid),
                                      right: BorderSide(
                                          color: Colors.black,
                                          width: 3,
                                          style: BorderStyle.solid),
                                      bottom: BorderSide(
                                          color: Colors.black,
                                          width: 3,
                                          style: BorderStyle.solid),
                                    ),
                                  ),
                                  child: Center(child: Text(ITEMPIC02 ?? '')),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
          // widget02 ?? SizedBox(),
        ],
      ),
    );
  }
}
