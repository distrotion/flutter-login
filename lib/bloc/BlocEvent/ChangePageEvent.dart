import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../data/global.dart';
import '../../mainBody.dart';
import '../../page/page0.dart';
import '../../widget/menu/mainmenu.dart';
import '../Cubit/NotificationEvent.dart';

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
    // print('${CuPage}');

    Widget output = Page0();
    // MainBodyContext
    // MenuContext

    if (UserLV >= CuPageLV) {
    } else {
      CuPage = Page0();
    }

    //   // BlocProvider.of<BlocNotification>(contextGB)
    //   //     .UpdateNotification("", "Error", enumNotificationlist.Error);

    Navigator.pop(MenuContext);
    // print(output);
    emit(CuPage);
  }
}
