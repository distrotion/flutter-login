import 'package:flutter/material.dart';
import '../model/model.dart';
import '../widget/common/Advancedropdown.dart';
//---------------------------------------------------------

import '../widget/common/Calendarwid.dart';
import '../widget/common/CheckboxC.dart';
import '../widget/common/ComInputText.dart';
import '../widget/common/IMGpickerWID.dart';
import '../widget/common/IMGviewWID.dart';
import '../widget/common/Radiobutton.dart';
import '../widget/common/Timewid.dart';
import '../widget/common/FILEpickerWID.dart';
import 'page0.dart';

//---------------------------------------------------------
bool iscontext = false;
String dataSTR01 = '';

class testbutton extends StatefulWidget {
  testbutton({Key? key}) : super(key: key);

  @override
  State<testbutton> createState() => _testbuttonState();
}

class _testbuttonState extends State<testbutton> {
  String test01 = '1';
  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        height: 64,
        width: 100,
        child: AdvanceDropDown(
          sLabel: "TEST",
          imgpath: 'assets/icons/icon-down_4@3x.png',
          listdropdown: const [
            MapEntry("", ""),
            MapEntry("ONE", "1"),
            MapEntry("TWO", "2"),
            MapEntry("THREE", "3"),
          ],
          onChangeinside: (d, k) {
            setState(() {
              test01 = d;
              print(test01);
              print(k);
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

class Page1BodyT2 extends StatefulWidget {
  const Page1BodyT2({Key? key}) : super(key: key);

  @override
  State<Page1BodyT2> createState() => _Page1BodyT2State();
}

class _Page1BodyT2State extends State<Page1BodyT2> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        height: 64,
        width: 500,
        // color: Colors.blue,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ComInputText(
              sLabel: "test",
              height: 40,
              isContr: iscontext,
              fnContr: (input) {
                setState(() {
                  iscontext = input;
                });
              },
              sValue: dataSTR01,
              returnfunc: (String s) {
                dataSTR01 = s;
              },
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                height: 40,
                child: ElevatedButton(
                  onPressed: () {
                    // print(dataSTR01);

                    setState(() {
                      iscontext = true;
                      dataSTR01 = '';
                      //
                    });
                    // iscontext = false;
                  },
                  child: Text(dataSTR01),
                ),
              ),
            )
          ],
        ),
      ),
    );
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

class CheckBoxTEST extends StatefulWidget {
  const CheckBoxTEST({Key? key}) : super(key: key);

  @override
  State<CheckBoxTEST> createState() => _CheckBoxTESTState();
}

class _CheckBoxTESTState extends State<CheckBoxTEST> {
  @override
  Widget build(BuildContext context) {
    return CheckBoxC(
      value: isChecked,
      getChbox: (value) {
        setState(() {
          isChecked = value;
        });
      },
    );
  }
}

enum SingingCharacter { lafayette, jefferson }

class MyStatefulWidget extends StatefulWidget {
  const MyStatefulWidget({Key? key}) : super(key: key);

  @override
  State<MyStatefulWidget> createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  SingingCharacter? _character = SingingCharacter.lafayette;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        ListTile(
          title: const Text('Lafayette'),
          leading: Radio<SingingCharacter>(
            value: SingingCharacter.lafayette,
            groupValue: _character,
            onChanged: (SingingCharacter? value) {
              setState(() {
                _character = value;
                print(value);
              });
            },
          ),
        ),
        ListTile(
          title: const Text('Thomas Jefferson'),
          leading: Radio<SingingCharacter>(
            value: SingingCharacter.jefferson,
            groupValue: _character,
            onChanged: (SingingCharacter? value) {
              setState(() {
                _character = value;
                print(value);
              });
            },
          ),
        ),
      ],
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

DateTime calendaset = DateTime.now();
String calendasetout = '';

class CALENDARTEST extends StatefulWidget {
  const CALENDARTEST({Key? key}) : super(key: key);

  @override
  State<CALENDARTEST> createState() => _CALENDARTESTState();
}

class _CALENDARTESTState extends State<CALENDARTEST> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        CalendaSelectDate(context, calendaset, (date) {
          //
          setState(() {
            calendasetout = date;
          });
        });
      },
      child: Container(
        height: 40,
        width: 300,
        color: Colors.red,
        child: Center(
          child: Text(calendasetout),
        ),
      ),
    );
  }
}
//

TimeOfDay timeset = TimeOfDay.now();
String timesetout = '';

class TIMEPICKTEST extends StatefulWidget {
  const TIMEPICKTEST({Key? key}) : super(key: key);

  @override
  State<TIMEPICKTEST> createState() => _TIMEPICKTESTState();
}

class _TIMEPICKTESTState extends State<TIMEPICKTEST> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        selectTime(context, timeset, (date) {
          setState(() {
            timesetout = date;
          });
        });
      },
      child: Container(
        height: 40,
        width: 300,
        color: Colors.red,
        child: Center(
          child: Text(timesetout),
        ),
      ),
    );
  }
}

// class Page1BlocTableBody extends StatelessWidget {
//   /// {@macro counter_page}
//   const Page1BlocTableBody({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return BlocProvider(
//         create: (_) => PremixDataSetBloc(),
//         child: BlocBuilder<PremixDataSetBloc, List<dataset>>(
//           builder: (context, data) {
//             return Page1Body(
//               data: data,
//             );
//           },
//         ));
//   }
// }

// Timer timer = new Timer(new Duration(seconds: 3), () {
//   debugPrint("Print after 3 seconds");
// });

//BlocProvider.of<SwPageCubit>(context).togglePage(page);
// BlocPageRebuild blocPageRebuild = BlocProvider.of<BlocPageRebuild>(context).rebuildPage();

// context.read<PremixDataSetBloc>().add(GetDataPressed());

// BlocProvider.of<BlocPageRebuild>(context).rebuildPage();

String FILEpicl64 = '';

class FILEpicfunction extends StatelessWidget {
  const FILEpicfunction({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 500,
      width: 500,
      child: Center(
          child: InkWell(
        onTap: () {
          //imgpickgallery().then((String result) {
          file64picker().then((String result) {
            if (result != '') {
              print(result);
              // FILEpicl64 = result;
            }
            // print(FILEpicl64);
          });
        },
        child: Container(
          height: 50,
          width: 100,
          color: Colors.red,
        ),
      )),
    );
  }
}

String base64pic05 = imgw;

class FileUploadButton05 extends StatefulWidget {
  const FileUploadButton05({Key? key}) : super(key: key);

  @override
  State<FileUploadButton05> createState() => _FileUploadButton05State();
}

class _FileUploadButton05State extends State<FileUploadButton05> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 500,
      width: 1000,
      child: Row(
        children: [
          Expanded(flex: 1, child: PicShow(base64: base64pic05)),
          Expanded(
            flex: 1,
            child: FileButton(
              base64pic: base64pic05,
              setimg: (img) {
                setState(() {
                  base64pic05 = img;
                });
              },
            ),
          ),
        ],
      ),
    );
  }
}

class mainvartest {
  static DATABODY test = DATABODY();
}

class testraiobuttest {
  static int radio01 = 0;
  static bool radio01_01 = false;
  static bool radio01_02 = false;
  static bool radio01_03 = false;
  static bool radio01_04 = false;
  static bool radio01_05 = false;
}

class raiobuttest extends StatefulWidget {
  const raiobuttest({Key? key}) : super(key: key);

  @override
  State<raiobuttest> createState() => _raiobuttestState();
}

class _raiobuttestState extends State<raiobuttest> {
  @override
  Widget build(BuildContext context) {
    clear01() {
      setState(() {
        //-------- update data
        mainvartest.test.inte = testraiobuttest.radio01;
        //--------
        if (testraiobuttest.radio01 == 1) {
          testraiobuttest.radio01_01 = true;
          testraiobuttest.radio01_02 = false;
          testraiobuttest.radio01_03 = false;
          testraiobuttest.radio01_04 = false;
          testraiobuttest.radio01_05 = false;
        } else if (testraiobuttest.radio01 == 2) {
          testraiobuttest.radio01_01 = false;
          testraiobuttest.radio01_02 = true;
          testraiobuttest.radio01_03 = false;
          testraiobuttest.radio01_04 = false;
          testraiobuttest.radio01_05 = false;
        } else if (testraiobuttest.radio01 == 3) {
          testraiobuttest.radio01_01 = false;
          testraiobuttest.radio01_02 = false;
          testraiobuttest.radio01_03 = true;
          testraiobuttest.radio01_04 = false;
          testraiobuttest.radio01_05 = false;
        } else if (testraiobuttest.radio01 == 4) {
          testraiobuttest.radio01_01 = false;
          testraiobuttest.radio01_02 = false;
          testraiobuttest.radio01_03 = false;
          testraiobuttest.radio01_04 = true;
          testraiobuttest.radio01_05 = false;
        } else if (testraiobuttest.radio01 == 5) {
          testraiobuttest.radio01_01 = false;
          testraiobuttest.radio01_02 = false;
          testraiobuttest.radio01_03 = false;
          testraiobuttest.radio01_04 = false;
          testraiobuttest.radio01_05 = true;
        } else if (testraiobuttest.radio01 == 0) {
          testraiobuttest.radio01_01 = false;
          testraiobuttest.radio01_02 = false;
          testraiobuttest.radio01_03 = false;
          testraiobuttest.radio01_04 = false;
          testraiobuttest.radio01_05 = false;
        }
      });
    }

    return SizedBox(
        height: 500,
        child: Column(
          children: [
            Radiobutton(
              value: testraiobuttest.radio01_01,
              getdata: (input) {
                setState(() {
                  // testraiobuttest.radio01_01 = input;
                  //--------
                  testraiobuttest.radio01 = 1;
                  clear01();
                  //--------
                });
              },
            ),
            Radiobutton(
              value: testraiobuttest.radio01_02,
              getdata: (input) {
                setState(() {
                  // testraiobuttest.radio01_02 = input;
                  //--------
                  testraiobuttest.radio01 = 2;
                  clear01();
                  //--------
                });
              },
            ),
            Radiobutton(
              value: testraiobuttest.radio01_03,
              getdata: (input) {
                setState(() {
                  // testraiobuttest.radio01_03 = input;
                  //--------
                  testraiobuttest.radio01 = 3;
                  clear01();
                  //--------
                });
              },
            ),
            Radiobutton(
              value: testraiobuttest.radio01_04,
              getdata: (input) {
                setState(() {
                  // testraiobuttest.radio01_04 = input;
                  //--------
                  testraiobuttest.radio01 = 4;
                  clear01();
                  //--------
                });
              },
            ),
            Radiobutton(
              value: testraiobuttest.radio01_05,
              getdata: (input) {
                setState(() {
                  // testraiobuttest.radio01_05 = input;
                  //--------
                  testraiobuttest.radio01 = 5;
                  clear01();
                  //--------
                });
              },
            ),
            InkWell(
              onTap: () {
                print(mainvartest.test.inte);
              },
              child: Container(
                height: 50,
                width: 100,
                color: Colors.red,
                child: Center(child: Text(mainvartest.test.inte.toString())),
              ),
            )
          ],
        ));
  }
}


// controller: ScrollController(
//                         initialScrollOffset: 0.0,
//                         keepScrollOffset: true,
//                       ),