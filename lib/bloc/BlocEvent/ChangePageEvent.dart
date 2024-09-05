// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';

// import '../../data/global.dart';
// import '../../mainBody.dart';
// import '../../page/page0.dart';
// import '../../widget/menu/mainmenu.dart';
// import '../cubit/NotificationEvent.dart';
// //-------------------------------------------------

// abstract class ChangePage_Event {}

// class ChangePage extends ChangePage_Event {}

// class ChangePage_nodrower extends ChangePage_Event {}

// class ChangePage_Bloc extends Bloc<ChangePage_Event, Widget> {
//   ChangePage_Bloc() : super(const Page0()) {
//     on<ChangePage>((event, emit) {
//       return _ChangePage_Function(state, emit);
//     });
//     on<ChangePage_nodrower>((event, emit) {
//       return _ChangePage_Function_no_drower(state, emit);
//     });
//   }
//   Future<void> _ChangePage_Function(Widget toAdd, Emitter<Widget> emit) async {
//     Widget output = Page0();

//     if (USERDATA.UserLV >= CuPageLV) {
//     } else {
//       CuPage = Page0();
//       BlocProvider.of<BlocNotification>(contextGB).UpdateNotification(
//           "Error", "No have permission", enumNotificationlist.Error);
//     }

//     Navigator.pop(MenuContext);
//     emit(CuPage);
//   }

//   Future<void> _ChangePage_Function_no_drower(
//       Widget toAdd, Emitter<Widget> emit) async {
//     Widget output = Page0();

//     if (USERDATA.UserLV >= CuPageLV) {
//     } else {
//       CuPage = Page0();
//       BlocProvider.of<BlocNotification>(contextGB).UpdateNotification(
//           "Error", "No have permission", enumNotificationlist.Error);
//     }

//     emit(CuPage);
//   }
// }
