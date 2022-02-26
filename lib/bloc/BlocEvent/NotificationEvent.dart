import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

late BuildContext contextGB;

class NotificationState {
  final String sHead;
  final String sBody;
  final enumNotificationlist notificationType;
  NotificationState(
      {this.sHead = "",
      this.sBody = "",
      this.notificationType =
          enumNotificationlist.none}); //First page set here!!
}

enum enumNotificationlist {
  none,
  Warning,
  Information,
  Success,
  Error,
}

class BlocNotification extends Cubit<NotificationState> {
  BlocNotification() : super(NotificationState());

  //BlocProvider.of<BlocNotification>(context).UpdateNotification(หัวข้อ, ข้อความ, ประเภท4สี);
  void UpdateNotification(
      String sHead, String sBody, enumNotificationlist notificationType) {
    emit(NotificationState(
        sHead: sHead, sBody: sBody, notificationType: notificationType));
  }
}

void notireturn() {
  BlocProvider.of<BlocNotification>(contextGB)
      .UpdateNotification("", "Login OK", enumNotificationlist.Success);
}

void notireturnCH(String input) {
  BlocProvider.of<BlocNotification>(contextGB)
      .UpdateNotification("test", input, enumNotificationlist.Success);
}
