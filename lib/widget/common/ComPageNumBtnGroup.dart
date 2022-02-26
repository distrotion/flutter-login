import 'package:flutter/material.dart';

import '../../styles/TextStyle.dart';

class ComPageNumBtnGroup extends StatelessWidget {
  const ComPageNumBtnGroup({
    Key? key,
    required this.nItemNum,
    required this.nPageSelects,
    required this.func,
    required this.nTableCellPerEachPage,
    required this.nNumToShowArrowAtPage,
  }) : super(key: key);
  final int nItemNum;
  final int nPageSelects;
  final Function func;
  final int nTableCellPerEachPage;
  final int nNumToShowArrowAtPage;

  @override
  Widget build(BuildContext context) {
    int nPageMax = (nItemNum / nTableCellPerEachPage).ceil();
    bool isEnableArrowLeft = false;
    bool isEnableArrowRight = false;
    if (nPageSelects > 1) {
      isEnableArrowLeft = true;
    }
    if (nPageSelects < nPageMax) {
      isEnableArrowRight = true;
    }

    final rsPageNumBtnList = <int>[];
    int nStartPage = nPageSelects;
    int nEndPage = nStartPage + nNumToShowArrowAtPage;
    /*if (nStartPage < 3) {
      nStartPage = 1;
    }*/
    if (nEndPage > nPageMax) {
      nEndPage = nPageMax;
    }
    if (nEndPage - nStartPage < nNumToShowArrowAtPage) {
      nStartPage = nEndPage - nNumToShowArrowAtPage;
    }
    if (nStartPage <= 0) {
      nStartPage = 1;
    }
    for (var n = nStartPage; n <= nEndPage; n++) {
      rsPageNumBtnList.add(n);
    }

    bool CheckSelectPage(int n) {
      if (n == nPageSelects) {
        return true;
      } else {
        return false;
      }
    }

    void tapArrow(bool isLeft) {
      if (isLeft) {
        func(nPageSelects - 1);
      } else {
        func(nPageSelects + 1);
      }
    }

    if (nPageMax <= 1) {
      //Only 1 = not display
      //return Container();
      return Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          for (int nId in rsPageNumBtnList)
            ComPageNumBtn(
              sLabel: nId.toString(),
              isSelect: true,
              func: func,
            ),
        ],
      );
    } else if (nPageMax < nNumToShowArrowAtPage + 2) {
      //1 - 5
      return Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          for (int nId in rsPageNumBtnList)
            ComPageNumBtn(
              sLabel: nId.toString(),
              isSelect: CheckSelectPage(nId),
              func: func,
            ),
        ],
      );
    } else {
      // < 1 - 5 >
      return Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          ComPageNumArrow(
              isLeft: true, isEnable: isEnableArrowLeft, func: tapArrow),
          for (int nId in rsPageNumBtnList)
            ComPageNumBtn(
              sLabel: nId.toString(),
              isSelect: CheckSelectPage(nId),
              func: func,
            ),
          ComPageNumArrow(
              isLeft: false, isEnable: isEnableArrowRight, func: tapArrow),
        ],
      );
    }
  }
}

class ComPageNumBtn extends StatelessWidget {
  const ComPageNumBtn(
      {Key? key,
      required this.sLabel,
      required this.isSelect,
      required this.func})
      : super(key: key);
  final String sLabel;
  final bool isSelect;
  final Function func;

  @override
  Widget build(BuildContext context) {
    if (isSelect) {
      return Container(
        width: 24,
        //color: Colors.red,
        child: TextButton(
            onPressed: () {
              func(int.parse(sLabel));
            },
            child: Text(
              sLabel,
              style: TxtStyle(fontSize: 12),
            )),
      );
    } else {
      return Container(
        width: 24,
        child: TextButton(
            onPressed: () {
              func(int.parse(sLabel));
            },
            child: Text(
              sLabel,
              style:
                  TxtStyle(fontSize: 12, color: CustomTheme.colorGreyDisable),
            )),
      );
    }
  }
}

class ComPageNumArrow extends StatelessWidget {
  const ComPageNumArrow(
      {Key? key,
      required this.isLeft,
      required this.isEnable,
      required this.func})
      : super(key: key);
  final bool isLeft;
  final bool isEnable;
  final Function func;

  @override
  Widget build(BuildContext context) {
    String sImgPath;
    if (isLeft) {
      sImgPath = 'assets/icons/icon-down_left.png';
    } else {
      sImgPath = 'assets/icons/icon-down_right.png';
    }

    if (isEnable) {
      return IconButton(
        onPressed: () {
          func(isLeft);
        },
        iconSize: 1,
        icon: Image.asset(
          sImgPath,
          color: Colors.black,
        ),
      );
    } else {
      return IconButton(
        onPressed: null,
        icon: Image.asset(
          sImgPath,
          color: CustomTheme.colorGreyDisable,
        ),
      );
      /*return Image.asset(
        sImgPath,
        color: CustomTheme.colorGreyDisable,
      );*/
    }
  }
}
