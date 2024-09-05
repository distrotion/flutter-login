import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../data/global.dart';
import '../../page/page0.dart';

import '../../widget/menu/mainmenu.dart';
import 'NotificationEvent.dart';

class ChangePage_Bloc extends Cubit<Widget> {
  /// {@macro brightness_Cubit}
  ChangePage_Bloc() : super(Page0());

  Future<void> ChangePage_nodrower(String name, Widget CuPagein) async {
    // String output = input;
    if (USERDATA.UserLV >= CuPageLV) {
      print(name);
      selectpage = name;
    } else {
      CuPagein = Page0();
      BlocProvider.of<BlocNotification>(contextGB).UpdateNotification(
          "Error", "No have permission", enumNotificationlist.Error);
    }

    emit(CuPagein);
  }

  Future<void> ChangePage(String name, Widget CuPagein) async {
    // String output = input;
    if (USERDATA.UserLV >= CuPageLV) {
      print(name);
      selectpage = name;
    } else {
      CuPagein = Page0();

      BlocProvider.of<BlocNotification>(contextGB).UpdateNotification(
          "Error", "No have permission", enumNotificationlist.Error);
    }
    Navigator.pop(MenuContext);
    emit(CuPagein);
  }

  // Future<void> Flush(String input) async {
  //   String output = '';
  //   emit(output);
  // }
}
