import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../data/global.dart';
import '../../page/page0.dart';

//-------------------------------------------------

abstract class ChangePage_Event {}

class ChangePage extends ChangePage_Event {}

class ChangePage_Bloc extends Bloc<ChangePage_Event, Widget> {
  ChangePage_Bloc() : super(const Page0()) {
    on<ChangePage>((event, emit) {
      return _ChangePage_Function(state, emit);
    });
  }
  Future<void> _ChangePage_Function(Widget toAdd, Emitter<Widget> emit) async {
    print('${CuPage}');

    Widget output = Page0();

    if (('${CuPage}' == 'Page1') && (UserLV >= PageLevel.page01)) {
      output = CuPage;
    } else if (('${CuPage}' == 'Page2') && (UserLV >= PageLevel.page02)) {
      output = CuPage;
    } else if (('${CuPage}' == 'Page3') && (UserLV >= PageLevel.page03)) {
      output = CuPage;
    } else if (('${CuPage}' == 'Page4') && (UserLV >= PageLevel.page04)) {
      output = CuPage;
    } else if (('${CuPage}' == 'Page5') && (UserLV >= PageLevel.page05)) {
      output = CuPage;
    } else if (('${CuPage}' == 'Page6') && (UserLV >= PageLevel.page06)) {
      output = CuPage;
    } else if (('${CuPage}' == 'Page7') && (UserLV >= PageLevel.page07)) {
      output = CuPage;
    } else if (('${CuPage}' == 'Page8') && (UserLV >= PageLevel.page08)) {
      output = CuPage;
    } else if (('${CuPage}' == 'Page9') && (UserLV >= PageLevel.page09)) {
      output = CuPage;
    } else if (('${CuPage}' == 'Page10') && (UserLV >= PageLevel.page10)) {
      output = CuPage;
    }

    emit(output);
  }
}
