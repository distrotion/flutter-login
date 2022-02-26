import 'package:flutter/material.dart';

class ComBtnImage extends StatelessWidget {
  const ComBtnImage(
      {Key? key,
      this.func,
      required this.sImgPath,
      this.nMarginToMakeIconSmaller = 0,
      this.nWidthHeight = 24})
      : super(key: key);
  final sImgPath;
  final Function? func;
  final double nWidthHeight;
  final double nMarginToMakeIconSmaller;

  @override
  Widget build(BuildContext context) {
    bool _isEnable = true;
    if (func == null) {
      _isEnable = false;
    }
    void tapFunc() {
      return func!();
    }

    //! set size by container outside
    return InkWell(
      onTap: !_isEnable ? null : tapFunc,
      child: Container(
        margin: EdgeInsets.all(nMarginToMakeIconSmaller),
        width: nWidthHeight,
        //color: Colors.green,
        // child: Image.asset(
        //   sImgPath,
        //   color: Colors.black,
        // ),
        child: Icon(sImgPath),
      ),
    );
  }
}
