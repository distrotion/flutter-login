import 'package:flutter/material.dart';

import '../../styles/TextStyle.dart';

class ComBtnBlack extends StatelessWidget {
  ComBtnBlack({
    Key? key,
    this.func,
    this.sLabel,
    this.nWidth = 342,
    this.nHeight = 36,
    this.nFontSize = 14,
    this.isEnable = true,
    this.BGcolor,
    this.TXcolor,
  }) : super(key: key);
  final String? sLabel;
  final double nWidth;
  final double nHeight;
  final double nFontSize;
  final bool isEnable;
  final Function? func;
  final Colors? BGcolor;
  final Colors? TXcolor;
  //? disable btn by set func to null

  @override
  Widget build(BuildContext context) {
    bool _isEnable = true;
    if (func == null) {
      _isEnable = false;
    }
    void tapFunc() {
      return func!();
    }

    Color c;
    if (!isEnable) {
      c = CustomTheme.colorGreyDisable;
    } else {
      c = CustomTheme.colorDark;
    }

    return Container(
      width: nWidth,
      height: nHeight,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          primary: c,
          shape: StadiumBorder(),
        ),
        onPressed: !_isEnable ? null : tapFunc,
        //onPressed: func!(),
        child: Text(
          sLabel.toString(),
          style: TxtStyle(
            color: Colors.white,
            fontSize: nFontSize,
          ),
        ),
      ),
    );
  }
}
