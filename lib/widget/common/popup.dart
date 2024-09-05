import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

//------------------------------------

import '../../bloc/BlocEvent/ChangePageEvent.dart';
import '../../bloc/cubit/Rebuild.dart';
import '../../data/global.dart';
import '../../mainBody.dart';
import '../../page/page1.dart';

void WORNINGpop(
    BuildContext contextin, List<String> text, double? height, double? width) {
  showDialog(
    context: contextin,
    barrierDismissible: true,
    builder: (BuildContext context) {
      return Dialog(
        child: SizedBox(
            height: height ?? 75,
            width: width ?? 100,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                // mainAxisAlignment: MainAxisAlignment.center,
                // crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Align(
                    alignment: Alignment.topRight,
                    child: InkWell(
                      onTap: () {
                        Navigator.pop(contextin);
                      },
                      child: const SizedBox(
                        height: 24,
                        width: 36,
                        child: Padding(
                          padding: EdgeInsets.only(right: 12),
                          child: Center(child: Icon(Icons.close)),
                        ),
                      ),
                    ),
                  ),
                  for (int i = 0; i < text.length; i++) Text(text[i]),
                  const SizedBox(
                    height: 20,
                  )
                ],
              ),
            )),
      );
    },
  );
}

void WORNINGPatMoveZonepop(
  BuildContext contextin,
  List<String> text,
  double? height,
  double? width,
) {
  showDialog(
    context: contextin,
    barrierDismissible: false,
    builder: (BuildContext context) {
      return Dialog(
        child: SizedBox(
            height: height ?? 75,
            width: width ?? 100,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                // mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  for (int i = 0; i < text.length; i++) Text(text[i]),
                  // const SizedBox(
                  //   height: 20,
                  // ),
                  InkWell(
                    onTap: () {
                      CuPage = Page1();
                      // MainBodyContext.read<ChangePage_Bloc>()
                      //     .add(ChangePage_nodrower());
                      Navigator.pop(contextin);
                    },
                    child: Container(
                      height: 40,
                      width: 100,
                      decoration: BoxDecoration(
                        color: const Color(0xff230a38),
                        borderRadius: BorderRadius.circular(4),
                      ),
                      child: const Center(
                        child: Text(
                          'ตกลง',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            )),
      );
    },
  );
}

void WORNINGpopB1(
    BuildContext contextin, List<String> text, double? height, double? width) {
  showDialog(
    context: contextin,
    barrierDismissible: true,
    builder: (BuildContext context) {
      return Dialog(
        child: SizedBox(
            height: height ?? 75,
            width: width ?? 100,
            child: Padding(
              padding: const EdgeInsetsDirectional.only(
                  top: 10, bottom: 10, start: 20, end: 20),
              child: Column(
                // mainAxisAlignment: MainAxisAlignment.center,
                // crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Align(
                    alignment: Alignment.topRight,
                    child: InkWell(
                      onTap: () {
                        Navigator.pop(contextin);
                      },
                      child: const SizedBox(
                        height: 24,
                        width: 36,
                        child: Padding(
                          padding: EdgeInsets.only(right: 12),
                          child: Center(child: Icon(Icons.close)),
                        ),
                      ),
                    ),
                  ),
                  for (int i = 0; i < text.length; i++) Text(text[i]),
                  const SizedBox(
                    height: 20,
                  )
                ],
              ),
            )),
      );
    },
  );
}
