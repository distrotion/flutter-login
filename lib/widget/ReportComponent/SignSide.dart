// import 'package:flutter/material.dart';
// import 'package:intl/intl.dart';

// import '../common/imgset.dart';
// import 'CommonReport.dart';

// class TAILSLOT extends StatelessWidget {
//   TAILSLOT({
//     Key? key,
//     this.widget01,
//     this.widget02,
//     this.widget03,
//     this.widget04,
//     this.widget05,
//     this.widget06,
//     this.PICS,
//     this.PASS,
//     this.Remark,
//   }) : super(key: key);
//   Widget? widget01;
//   Widget? widget02;
//   Widget? widget03;
//   Widget? widget04;
//   Widget? widget05;
//   Widget? widget06;
//   String? PICS;
//   String? PASS;
//   String? Remark;

//   @override
//   Widget build(BuildContext context) {
//     var now = DateTime.now();
//     var formatter = DateFormat('dd-MMM-yyyy');
//     String formattedDate = formatter.format(now);
//     return Padding(
//       padding: const EdgeInsets.only(
//         // top: 12,
//         bottom: 12,
//         right: 8,
//         left: 8,
//       ),
//       child: Row(
//         children: [
//           Expanded(
//             flex: 9,
//             child: Padding(
//               padding: const EdgeInsets.only(right: 10),
//               child: SizedBox(
//                 height: 260,
//                 child: Column(
//                   children: [
//                     SizedBox(
//                       child: Column(
//                         children: [
//                           SizedBox(
//                             height: 130,
//                             child: Column(
//                               children: [
//                                 HEAD4SLOT(
//                                   padd: 0,
//                                   hig: 40,
//                                   ListFlex: const [1, 1, 1, 1],
//                                   widget01: const Center(
//                                     child: Text(
//                                       "Judgement",
//                                       style: TextStyle(
//                                         fontSize: 16,
//                                       ),
//                                     ),
//                                   ),
//                                   widget02: const Center(
//                                     child: Text(
//                                       "Inspected By",
//                                       style: TextStyle(
//                                         fontSize: 16,
//                                       ),
//                                     ),
//                                   ),
//                                   widget03: const Center(
//                                     child: Text(
//                                       "Checked By",
//                                       style: TextStyle(
//                                         fontSize: 16,
//                                       ),
//                                     ),
//                                   ),
//                                   widget04: const Center(
//                                     child: Text(
//                                       "Approved By",
//                                       style: TextStyle(
//                                         fontSize: 16,
//                                       ),
//                                     ),
//                                   ),
//                                 ),
//                                 BODY4SLOT(
//                                   padd: 0,
//                                   hig: 90,
//                                   ListFlex: const [1, 1, 1, 1],
//                                   widget01: Center(
//                                     child: Text(
//                                       PASS ?? '',
//                                       style: const TextStyle(
//                                         fontSize: 20,
//                                         fontWeight: FontWeight.bold,
//                                       ),
//                                     ),
//                                   ),
//                                   widget02: Align(
//                                     alignment: Alignment.bottomRight,
//                                     child: Padding(
//                                       padding: const EdgeInsets.all(4.0),
//                                       child: Text(formattedDate),
//                                     ),
//                                   ),
//                                   widget03: Align(
//                                     alignment: Alignment.bottomRight,
//                                     child: Padding(
//                                       padding: const EdgeInsets.all(4.0),
//                                       child: Text(formattedDate),
//                                     ),
//                                   ),
//                                   widget04: Align(
//                                     alignment: Alignment.bottomRight,
//                                     child: Padding(
//                                       padding: const EdgeInsets.all(4.0),
//                                       child: Text(formattedDate),
//                                     ),
//                                   ),
//                                 ),
//                               ],
//                             ),

//                             // decoration: BoxDecoration(
//                             //   border: Border.all(color: Colors.black, width: 3),
//                             // ),
//                           ),
//                           const SizedBox(
//                             height: 10,
//                           ),
//                           Container(
//                             height: 120,
//                             decoration: BoxDecoration(
//                               border: Border.all(color: Colors.black, width: 3),
//                             ),
//                             child: Stack(
//                               children: [
//                                 const Align(
//                                   alignment: Alignment.topLeft,
//                                   child: Padding(
//                                     padding: EdgeInsets.all(12.0),
//                                     child: Text("Remark"),
//                                   ),
//                                 ),
//                                 Align(
//                                   alignment: Alignment.center,
//                                   child: Padding(
//                                     padding: EdgeInsets.all(12.0),
//                                     child: Text(Remark ?? ''),
//                                   ),
//                                 ),
//                               ],
//                             ),
//                           ),
//                         ],
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//             ),
//           ),
//           Expanded(
//             flex: 11,
//             child: Container(
//               height: 260,
//               decoration: BoxDecoration(
//                 border: Border.all(color: Colors.black, width: 3),
//               ),
//               child: Stack(
//                 children: [
//                   const Align(
//                     alignment: Alignment.topLeft,
//                     child: Padding(
//                       padding: EdgeInsets.all(12.0),
//                       child: Text("Details"),
//                     ),
//                   ),
//                   Padding(
//                     padding: const EdgeInsets.only(left: 100),
//                     child: PicShow(width: 800, height: 240, base64: PICS ?? ''),
//                   ),
//                 ],
//               ),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../common/imgset.dart';
import 'CommonReport.dart';

class TAILSLOT extends StatelessWidget {
  TAILSLOT({
    Key? key,
    this.widget01,
    this.widget02,
    this.widget03,
    this.widget04,
    this.widget05,
    this.widget06,
    this.PICS,
    this.PASS,
    this.Remark,
    this.NAME01,
    this.NAME02,
    this.NAME03,
    this.signs,
  }) : super(key: key);
  Widget? widget01;
  Widget? widget02;
  Widget? widget03;
  Widget? widget04;
  Widget? widget05;
  Widget? widget06;
  String? PICS;
  String? PASS;
  String? Remark;
  String? NAME01;
  String? NAME02;
  String? NAME03;

  bool? signs;

  @override
  Widget build(BuildContext context) {
    var now = DateTime.now();
    var formatter = DateFormat('dd-MMM-yyyy');
    String formattedDate = formatter.format(now);
    return Padding(
      padding: const EdgeInsets.only(
        // top: 12,
        bottom: 12,
        right: 8,
        left: 8,
      ),
      child: Row(
        children: [
          Expanded(
            flex: 9,
            child: Padding(
              padding: const EdgeInsets.only(right: 10),
              child: SizedBox(
                height: 260,
                child: Column(
                  children: [
                    SizedBox(
                      child: Column(
                        children: [
                          SizedBox(
                            height: 130,
                            child: Column(
                              children: [
                                HEAD4SLOT(
                                  padd: 0,
                                  hig: 40,
                                  ListFlex: const [1, 1, 1, 1],
                                  widget01: const Center(
                                    child: Text(
                                      "Judgement",
                                      style: TextStyle(
                                        fontSize: 16,
                                      ),
                                    ),
                                  ),
                                  widget02: const Center(
                                    child: Text(
                                      "Inspected By",
                                      style: TextStyle(
                                        fontSize: 16,
                                      ),
                                    ),
                                  ),
                                  widget03: const Center(
                                    child: Text(
                                      "Checked By",
                                      style: TextStyle(
                                        fontSize: 16,
                                      ),
                                    ),
                                  ),
                                  widget04: const Center(
                                    child: Text(
                                      "Approved By",
                                      style: TextStyle(
                                        fontSize: 16,
                                      ),
                                    ),
                                  ),
                                ),
                                BODY4SLOT(
                                  padd: 0,
                                  hig: 90,
                                  ListFlex: const [1, 1, 1, 1],
                                  widget01: Center(
                                    child: Text(
                                      PASS ?? '',
                                      style: const TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                  widget02: Stack(
                                    children: [
                                      Align(
                                        alignment: Alignment.center,
                                        child: Padding(
                                            padding: const EdgeInsets.only(
                                                // bottom: 5,
                                                // top: 10,
                                                ),
                                            // child: Text(NAME01 ?? ''),
                                            child: (signs ?? false)
                                                ? SizedBox(
                                                    height: 120,
                                                    width: 120,
                                                    child: PicShowAct(
                                                        width: 120,
                                                        height: 120,
                                                        base64: NAME01 ?? ''),
                                                  )
                                                : SizedBox(
                                                    height: 48,
                                                    width: 100,
                                                    child: Text(NAME01 ?? ''))),
                                      ),
                                      Align(
                                        alignment: Alignment.bottomCenter,
                                        child: Padding(
                                          padding:
                                              const EdgeInsets.only(top: 4),
                                          child: Text(formattedDate),
                                        ),
                                      ),
                                    ],
                                  ),
                                  widget03: Stack(
                                    children: [
                                      Align(
                                        alignment: Alignment.center,
                                        child: Padding(
                                          padding: const EdgeInsets.only(
                                              // bottom: 5,
                                              // top: 10,
                                              ),
                                          // child: Text(NAME02 ?? ''),
                                          child: (signs ?? false)
                                              ? SizedBox(
                                                  height: 120,
                                                  width: 120,
                                                  child: PicShowAct(
                                                      width: 120,
                                                      height: 120,
                                                      base64: NAME02 ?? ''),
                                                )
                                              : SizedBox(
                                                  height: 48,
                                                  width: 100,
                                                  child: Text(NAME02 ?? '')),
                                        ),
                                      ),
                                      Align(
                                        alignment: Alignment.bottomCenter,
                                        child: Padding(
                                          padding:
                                              const EdgeInsets.only(top: 4),
                                          child: Text(formattedDate),
                                        ),
                                      ),
                                    ],
                                  ),
                                  widget04: Stack(
                                    children: [
                                      Align(
                                        alignment: Alignment.center,
                                        child: Padding(
                                            padding: const EdgeInsets.only(
                                                // bottom: 5,
                                                // top: 10,
                                                ),
                                            // child: Text(NAME03 ?? ''),
                                            child: (signs ?? false)
                                                ? SizedBox(
                                                    height: 120,
                                                    width: 120,
                                                    child: PicShowAct(
                                                        width: 120,
                                                        height: 120,
                                                        base64: NAME03 ?? ''),
                                                  )
                                                : SizedBox(
                                                    height: 48,
                                                    width: 100,
                                                    child: Text(NAME03 ?? ''))),
                                      ),
                                      Align(
                                        alignment: Alignment.bottomCenter,
                                        child: Padding(
                                          padding:
                                              const EdgeInsets.only(top: 4),
                                          child: Text(formattedDate),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),

                            // decoration: BoxDecoration(
                            //   border: Border.all(color: Colors.black, width: 3),
                            // ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Container(
                            height: 120,
                            decoration: BoxDecoration(
                              border: Border.all(color: Colors.black, width: 3),
                            ),
                            child: Stack(
                              children: [
                                const Align(
                                  alignment: Alignment.topLeft,
                                  child: Padding(
                                    padding: EdgeInsets.all(12.0),
                                    child: Text("Remark"),
                                  ),
                                ),
                                Align(
                                  alignment: Alignment.center,
                                  child: Padding(
                                    padding: EdgeInsets.all(12.0),
                                    child: Text(Remark ?? ''),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Expanded(
            flex: 11,
            child: Container(
              height: 260,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.black, width: 3),
              ),
              child: Stack(
                children: [
                  const Align(
                    alignment: Alignment.topLeft,
                    child: Padding(
                      padding: EdgeInsets.all(12.0),
                      child: Text("Details"),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 100),
                    child: PicShow(width: 800, height: 240, base64: PICS ?? ''),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
