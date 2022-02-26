import 'package:flutter/material.dart';

import '../../styles/TextStyle.dart';
import 'ComBtnBlack.dart';
import 'ComBtnBlackBorder.dart';
import 'ComSpace.dart';

class ComYNPopup extends StatelessWidget {
  const ComYNPopup(
      {Key? key,
      this.sTxtHead = "",
      this.sTxtBody = "",
      this.sTxtBtnYes = "",
      this.sTxtBtnNo = "",
      this.funcYes,
      this.funcNo,
      this.sFuncData = "",
      this.isSwitchYNBtnPos = false})
      : super(key: key);
  final String sTxtHead;
  final String sTxtBody;
  final String sTxtBtnYes;
  final String sTxtBtnNo;
  final Function? funcYes;
  final Function? funcNo;
  final String sFuncData; //func will return this value for only Yes btn
  final bool isSwitchYNBtnPos; //Switch Yes and No btn :  true = No, Yes

  @override
  Widget build(BuildContext context) {
    void tapYes() {
      funcYes!(sFuncData);
    }

    void tapNo() {
      funcNo!();
    }

    return AlertDialog(
      backgroundColor: Colors.transparent,
      contentPadding: EdgeInsets.zero,
      shape: RoundedRectangleBorder(
          // borderRadius: BorderRadius.all(
          //   Radius.circular(0),
          // ),
          ),
      content: Container(
        //width: 854,
        //cannot margin here because it will be empty space
        decoration: BoxDecoration(
          color: CustomTheme.colorGreyBg,
          // borderRadius: BorderRadius.all(Radius.circular(24)),
          boxShadow: [
            BoxShadow(
                color: CustomTheme.colorShadowBgStrong,
                offset: Offset(0, 0),
                blurRadius: 10,
                spreadRadius: 0)
          ],
        ),
        child: SingleChildScrollView(
          child: Column(
            //mainAxisAlignment: MainAxisAlignment.start,
            children: [
              ComSpaceHeight(nHeight: 24),
              Text(sTxtHead,
                  style: TxtStyle(fontSize: 20), textAlign: TextAlign.center),
              ComSpaceHeight(nHeight: 24),
              Text(sTxtBody,
                  style: TxtStyle(fontSize: 12), textAlign: TextAlign.center),
              ComSpaceHeight(nHeight: 24),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ComSpaceWidth(nWidth: 24),
                  if (!isSwitchYNBtnPos)
                    ComBtnBlack(
                        sLabel: sTxtBtnYes, func: tapYes, nWidth: 134), //Yes
                  if (isSwitchYNBtnPos)
                    ComBtnBlackBorder(
                        sLabel: sTxtBtnNo, func: tapNo, nWidth: 134), //No
                  ComSpaceWidth(nWidth: 24),
                  if (!isSwitchYNBtnPos)
                    ComBtnBlackBorder(
                        sLabel: sTxtBtnNo, func: tapNo, nWidth: 134), //No
                  if (isSwitchYNBtnPos)
                    ComBtnBlack(
                        sLabel: sTxtBtnYes, func: tapYes, nWidth: 134), //Yes

                  ComSpaceWidth(nWidth: 24),
                ],
              ),
              ComSpaceHeight(nHeight: 24),
            ],
          ),
        ),
      ),
    );
  }
}
