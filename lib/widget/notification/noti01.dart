import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../bloc/cubit/NotificationEvent.dart';

//!Bloc provider and builder
class BlocBuilderNotification extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<BlocNotification, NotificationState>(
      builder: (_, notificationState) {
        return ComNotification(notificationState: notificationState);
      },
    );
  }
}

class ComNotification extends StatefulWidget {
  const ComNotification({Key? key, required this.notificationState})
      : super(key: key);
  final NotificationState notificationState;
  @override
  _ComNotificationState createState() => _ComNotificationState();
}

class _ComNotificationState extends State<ComNotification> {
  @override
  Widget build(BuildContext context) {
    List<Widget> _showItem = [];
    double loginWidth = 342;
    double loginHeight = 90;

    Color boxcolor = Colors.black;
    int i = 0;
    TapClose() {
      _showItem.clear();
      print(_showItem);
      BlocProvider.of<BlocNotification>(context)
          .UpdateNotification("", "", enumNotificationlist.none);
    }

    if (widget.notificationState.notificationType !=
        enumNotificationlist.none) {
      if (widget.notificationState.notificationType ==
          enumNotificationlist.Error) {
        _showItem.add(AnimatedContainer(
            duration: Duration(milliseconds: 1500),
            width: loginWidth,
            height: loginHeight,
            //color: Colors.red,
            // color: boxcolor,
            color: Colors.transparent,
            curve: Curves.linearToEaseOut,
            child: Box_notification_Error(
              title_notification: widget.notificationState
                  .sHead, //! oopรับค่า title ไปแสดง _notificationState.sTextCode 'Error'<---
              subtitles_notification:
                  widget.notificationState.sBody, //! oopรับค่า subtitle ไปแสดง
              Close_Func: TapClose,
            )));
      }
      if (widget.notificationState.notificationType ==
          enumNotificationlist.Success) {
        _showItem.add(
          AnimatedContainer(
            duration: Duration(milliseconds: 1500),
            width: loginWidth,
            height: loginHeight,
            //color: Colors.red,
            // color: boxcolor,
            color: Colors.transparent,
            curve: Curves.linearToEaseOut,
            child: Box_notification_seccession(
              title_notification: widget.notificationState
                  .sHead, //! oopรับค่า title ไปแสดง _notificationState.sTextCode  'Success'<---
              subtitles_notification:
                  widget.notificationState.sBody, //! oopรับค่า subtitle ไปแสดง
              Close_Func: TapClose,
            ),
          ),
        );
      }
      if (widget.notificationState.notificationType ==
          enumNotificationlist.Information) {
        _showItem.add(AnimatedContainer(
            duration: Duration(milliseconds: 1500),
            width: loginWidth,
            height: loginHeight,
            color: Colors.transparent,
            curve: Curves.linearToEaseOut,
            child: Box_notification_info(
              title_notification: widget.notificationState
                  .sHead, //! oopรับค่า title ไปแสดง _notificationState.sTextCode  'Information'<---
              subtitles_notification:
                  widget.notificationState.sBody, //! oopรับค่า subtitle ไปแสดง
              Close_Func: TapClose,
            )));
      }
      if (widget.notificationState.notificationType ==
          enumNotificationlist.Warning) {
        _showItem.add(
          AnimatedContainer(
            duration: Duration(milliseconds: 1500),
            width: loginWidth,
            height: loginHeight,
            //color: Colors.red,
            //color: boxcolor,
            color: Colors.transparent,
            curve: Curves.linearToEaseOut,
            child: Box_notification_Warning(
              title_notification: widget.notificationState
                  .sHead, //! oopรับค่า title ไปแสดง _notificationState.sTextCode  'Warning' <---
              subtitles_notification:
                  widget.notificationState.sBody, //! oopรับค่า subtitle ไปแสดง
              Close_Func: TapClose,
            ),
          ),
        );
      }
    } else {
      //Container();
      setState(() {
        loginWidth = 0;
        loginHeight = 0;
        boxcolor = Colors.transparent;
      });
    }
    print(_showItem);
    return Container(
      height: loginHeight, // 400,
      width: loginWidth * _showItem.length, // 400,
      //color: Colors.green,
      child: PageView(
        children: <Widget>[
          Column(mainAxisAlignment: MainAxisAlignment.start, children: [
            // for (var item = 0; item < _showItem.length; item++) _showItem[item]
            for (var item in _showItem) item
          ]) //! <----แสดงผล
        ],
      ),
    );
  }
}

class Box_notification_Error extends StatefulWidget {
  Box_notification_Error({
    Key? key,
    required this.Close_Func,
    required this.title_notification,
    required this.subtitles_notification,
  }) : super(key: key);
  Function Close_Func;
  String title_notification;
  String subtitles_notification;

  @override
  _Box_notification_ErrorState createState() => _Box_notification_ErrorState();
}

class _Box_notification_ErrorState extends State<Box_notification_Error> {
  @override
  Widget build(BuildContext context) {
    String _title_notification = widget.title_notification;
    String _subtitles_notification = widget.subtitles_notification;
    AssetImage _icon_path_notification =
        AssetImage("assets/icons/icon-error@3x.png");

    // Function _closeBox =widget.closeBox;

    //----------------------------------------------------------------
    TextStyle costomtext_title = const TextStyle(
      fontFamily: 'Mitr',
      color: Color(0xdd000000),
      fontSize: 14,
      fontWeight: FontWeight.w400,
      fontStyle: FontStyle.normal,
      letterSpacing: 0,
    );

    //----------------------------------------------------------------
    TextStyle costomtext = const TextStyle(
      color: Colors.black87,
      fontSize: 12,
      fontFamily: 'Mitr',
    );
    //----------------------------------------------------------------
    Image _ShowIconStatus = Image(
        image: _icon_path_notification,
        width: 24.0,
        height: 24.0,
        fit: BoxFit.fill);
    //----------------------------------------------------------------
    Text _ShowMsg_status_notification =
        Text(_title_notification, style: costomtext_title); //!msgstatus
    //----------------------------------------------------------------
    SizedBox _ShowMsg_Expand = SizedBox(
      child: SizedBox(
        child: Text(_subtitles_notification, style: costomtext),
        width: 267,
      ),
    );
    //----------------------------------------------------------------

    IconButton _CloseIcon = IconButton(
        mouseCursor: SystemMouseCursors.disappearing,
        splashRadius: 20.0,
        iconSize: 24,
        padding: const EdgeInsets.all(0),
        tooltip: "Close",
        onPressed: () {
          setState(() {
            widget.Close_Func();
          });
        }, //!ใส่ที่ปิด
        icon: const Image(
          image: AssetImage("assets/icons/icon-close@3x.png"),
          height: 18,
          width: 18,
          fit: BoxFit.cover,
        ));
    //----------------------------------------------------------------
    Timer(Duration(seconds: 3), () {
      // Navigator.pop(context);
      widget.Close_Func();
    });
    return Container(
      height: 90,
      width: 342,
      decoration: BoxDecoration(
        color: Color(0xfffbedec), //!สีกล่องerror
        border: Border.all(
          color: Color(0xffdb4c41), //!สีขอบ Color(0x19db4c41)
          width: 1,
        ),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Stack(
        children: [
          Positioned(
            top: 12.0,
            left: 12.0,
            child: _ShowIconStatus,
          ),
          Positioned(
            top: 12.0,
            left: 44.0,
            child: _ShowMsg_status_notification,
          ),
          Positioned(
              top: 40.0, left: 44.0, right: 8.0, child: _ShowMsg_Expand), //!msg
          // Positioned(
          //   left: 300.0,
          //   bottom: 52,
          //   child: _CloseIcon,

          // )
        ],
      ),
    );
  }
}

//?------------------------------------------BoxSuccess--------------------------------------------------

class Box_notification_seccession extends StatefulWidget {
  Box_notification_seccession({
    Key? key,
    required this.Close_Func,
    required this.title_notification,
    required this.subtitles_notification,
  }) : super(key: key);
  Function Close_Func;
  String title_notification;
  String subtitles_notification;

  @override
  _Box_notification_seccessionState createState() =>
      _Box_notification_seccessionState();
}

class _Box_notification_seccessionState
    extends State<Box_notification_seccession> {
  @override
  Widget build(BuildContext context) {
    String _title_notification = widget.title_notification;
    String _subtitles_notification = widget.subtitles_notification;
    AssetImage _icon_path_notification =
        AssetImage("assets/icons/icon-correct@2x-green.png");

    // Function _closeBox =widget.closeBox;

    //----------------------------------------------------------------
    TextStyle costomtext_title = const TextStyle(
      fontFamily: 'Mitr',
      color: Color(0xdd000000),
      fontSize: 14,
      fontWeight: FontWeight.w400,
      fontStyle: FontStyle.normal,
      letterSpacing: 0,
    );

    //----------------------------------------------------------------
    TextStyle costomtext = const TextStyle(
      color: Colors.black87,
      fontSize: 12,
      fontFamily: 'Mitr',
    );
    //----------------------------------------------------------------
    Image _ShowIconStatus = Image(
        image: _icon_path_notification,
        width: 24.0,
        height: 24.0,
        fit: BoxFit.fill);
    //----------------------------------------------------------------
    Text _ShowMsg_status_notification =
        Text(_title_notification, style: costomtext_title); //!msgstatus
    //----------------------------------------------------------------
    SizedBox _ShowMsg_Expand = SizedBox(
      child: SizedBox(
        child: Text(_subtitles_notification, style: costomtext),
        width: 267,
      ),
    );
    //----------------------------------------------------------------

    IconButton _CloseIcon = IconButton(
        mouseCursor: SystemMouseCursors.disappearing,
        splashRadius: 20.0,
        iconSize: 24,
        padding: const EdgeInsets.all(0),
        tooltip: "Close",
        onPressed: () {
          setState(() {
            widget.Close_Func();
          });
        }, //!ใส่ที่ปิด
        icon: const Image(
          image: AssetImage("assets/icons/icon-close@3x.png"),
          height: 18,
          width: 18,
          fit: BoxFit.cover,
        ));

    //----------------------------------------------------------------
    // widget.Close_Func();
    Timer(Duration(seconds: 3), () {
      // Navigator.pop(context);
      widget.Close_Func();
    });

    return Container(
      height: 90,
      width: 342,
      decoration: BoxDecoration(
        color: Color(0xffeefaee), //!สีกล่อง
        border: Border.all(
          color: Color(0xff55d65c), //!สีขอบ
          width: 1,
        ),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Stack(
        children: [
          Positioned(
            top: 12.0,
            left: 12.0,
            child: _ShowIconStatus,
          ),
          Positioned(
            top: 12.0,
            left: 44.0,
            child: _ShowMsg_status_notification,
          ),
          Positioned(
              top: 40.0, left: 44.0, right: 8.0, child: _ShowMsg_Expand), //!msg
          // Positioned(
          //   left: 300.0,
          //   bottom: 52,
          //   child: _CloseIcon,
          // ),
        ],
      ),
    );
  }
}

//?-----------------------------------------------BoxWarning---------------------------------------------
class Box_notification_Warning extends StatefulWidget {
  Box_notification_Warning({
    Key? key,
    required this.Close_Func,
    required this.title_notification,
    required this.subtitles_notification,
  }) : super(key: key);
  Function Close_Func;
  String title_notification;
  String subtitles_notification;
  @override
  _Box_notification_WarningState createState() =>
      _Box_notification_WarningState();
}

class _Box_notification_WarningState extends State<Box_notification_Warning> {
  @override
  Widget build(BuildContext context) {
    String _title_notification = widget.title_notification;
    String _subtitles_notification = widget.subtitles_notification;
    AssetImage _icon_path_notification =
        AssetImage("assets/icons/icon-caution@3x.png");

    // Function _closeBox =widget.closeBox;

    //----------------------------------------------------------------
    TextStyle costomtext_title = const TextStyle(
      fontFamily: 'Mitr',
      color: Color(0xdd000000),
      fontSize: 14,
      fontWeight: FontWeight.w400,
      fontStyle: FontStyle.normal,
      letterSpacing: 0,
    );

    //----------------------------------------------------------------
    TextStyle costomtext = const TextStyle(
      color: Colors.black87,
      fontSize: 12,
      fontFamily: 'Mitr',
    );
    //----------------------------------------------------------------
    Image _ShowIconStatus = Image(
        image: _icon_path_notification,
        width: 24.0,
        height: 24.0,
        fit: BoxFit.fill);
    //----------------------------------------------------------------
    Text _ShowMsg_status_notification =
        Text(_title_notification, style: costomtext_title); //!msgstatus
    //----------------------------------------------------------------
    SizedBox _ShowMsg_Expand = SizedBox(
      child: SizedBox(
        child: Text(_subtitles_notification, style: costomtext),
        width: 267,
      ),
    );
    //----------------------------------------------------------------

    IconButton _CloseIcon = IconButton(
        mouseCursor: SystemMouseCursors.disappearing,
        splashRadius: 20.0,
        iconSize: 24,
        padding: const EdgeInsets.all(0),
        tooltip: "Close",
        onPressed: () {
          setState(() {
            widget.Close_Func();
          });
        }, //!ใส่ที่ปิด
        icon: const Image(
          image: AssetImage("assets/icons/icon-close@3x.png"),
          height: 18,
          width: 18,
          fit: BoxFit.cover,
        ));
    //----------------------------------------------------------------
    Timer(Duration(seconds: 3), () {
      // Navigator.pop(context);
      widget.Close_Func();
    });
    return Container(
      height: 90,
      width: 342,
      decoration: BoxDecoration(
        color: Color(0xfffef9ea), //!สีกล่อง
        border: Border.all(
          color: Color(0xfffec532), //!สีขอบ
          width: 1,
        ),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Stack(
        children: [
          Positioned(
            top: 12.0,
            left: 12.0,
            child: _ShowIconStatus,
          ),
          Positioned(
            top: 12.0,
            left: 44.0,
            child: _ShowMsg_status_notification,
          ),
          Positioned(
              top: 40.0, left: 44.0, right: 8.0, child: _ShowMsg_Expand), //!msg
          // Positioned(
          //   left: 300.0,
          //   bottom: 52,
          //   child: _CloseIcon,

          // )
        ],
      ),
    );
  }
}

//?-------------------------------------------BoxInfo-------------------------------------------------

class Box_notification_info extends StatefulWidget {
  Box_notification_info({
    Key? key,
    required this.Close_Func,
    required this.title_notification,
    required this.subtitles_notification,
  }) : super(key: key);
  Function Close_Func;
  String title_notification;
  String subtitles_notification;

  @override
  _Box_notification_infoState createState() => _Box_notification_infoState();
}

class _Box_notification_infoState extends State<Box_notification_info> {
  @override
  Widget build(BuildContext context) {
    String _title_notification = widget.title_notification;
    String _subtitles_notification = widget.subtitles_notification;
    AssetImage _icon_path_notification =
        AssetImage("assets/icons/icon-info@3x.png");
    // Function _closeBox =widget.closeBox;

    //----------------------------------------------------------------
    TextStyle costomtext_title = const TextStyle(
      fontFamily: 'Mitr',
      color: Color(0xdd000000),
      fontSize: 14,
      fontWeight: FontWeight.w400,
      fontStyle: FontStyle.normal,
      letterSpacing: 0,
    );

    //----------------------------------------------------------------
    TextStyle costomtext = const TextStyle(
      color: Colors.black87,
      fontSize: 12,
      fontFamily: 'Mitr',
    );
    //----------------------------------------------------------------
    Image _ShowIconStatus = Image(
        image: _icon_path_notification,
        width: 24.0,
        height: 24.0,
        fit: BoxFit.fill);
    //----------------------------------------------------------------
    Text _ShowMsg_status_notification =
        Text(_title_notification, style: costomtext_title); //!msgstatus
    //----------------------------------------------------------------
    SizedBox _ShowMsg_Expand = SizedBox(
      child: SizedBox(
        child: Text(_subtitles_notification, style: costomtext),
        width: 267,
      ),
    );
    //----------------------------------------------------------------

    IconButton _CloseIcon = IconButton(
        mouseCursor: SystemMouseCursors.disappearing,
        splashRadius: 20.0,
        iconSize: 24,
        padding: const EdgeInsets.all(0),
        tooltip: "Close",
        onPressed: () {
          setState(() {
            widget.Close_Func();
          });
        }, //!ใส่ที่ปิด
        icon: const Image(
          image: AssetImage("assets/icons/icon-close@3x.png"),
          height: 18,
          width: 18,
          fit: BoxFit.cover,
        ));
    //----------------------------------------------------------------

    Timer(Duration(seconds: 3), () {
      // Navigator.pop(context);
      widget.Close_Func();
    });
    return Container(
      height: 90,
      width: 342,
      decoration: BoxDecoration(
        color: Color(0xffeaf0fe), //!สีกล่อง
        border: Border.all(
          color: Color(0xff3072f5), //!สีขอบ
          width: 1,
        ),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Stack(
        children: [
          Positioned(
            top: 12.0,
            left: 12.0,
            child: _ShowIconStatus,
          ),
          Positioned(
            top: 12.0,
            left: 44.0,
            child: _ShowMsg_status_notification,
          ),
          Positioned(
              top: 40.0, left: 44.0, right: 8.0, child: _ShowMsg_Expand), //!msg
          // Positioned(
          //   left: 300.0,
          //   bottom: 52,
          //   child: _CloseIcon,

          // )
        ],
      ),
    );
  }
}




//!Bloc provider and builder
/*class BlocBuilderNotification extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<BlocNotification, NotificationState>(
      builder: (_, notificationState) {
        return ComNotification(notificationState: notificationState);
      },
    );
  }
}

class ComNotification extends StatelessWidget {
  const ComNotification({Key? key, required this.notificationState}) : super(key: key);
  final NotificationState notificationState;

  @override
  Widget build(BuildContext context) {
    if (notificationState.notificationType != enumNotificationlist.none) {
      void TapClose() {
        BlocProvider.of<BlocNotification>(context).UpdateNotification("", "", enumNotificationlist.none);
      }

      return InkWell(
        onTap: TapClose,
        child: Container(
          color: CheckNotificationColor(notificationState),
          width: 400,
          child: Column(
            children: [
              ComSpaceHeight(nHeight: 8),
              Text(notificationState.sHead, style: TxtStyle(fontSize: 12), textAlign: TextAlign.center),
              Text(notificationState.sBody, style: TxtStyle(fontSize: 12), textAlign: TextAlign.center),
              ComSpaceHeight(nHeight: 8),
            ],
          ),
        ),
      );
    } else {
      return Container();
    }
  }
}
Color CheckNotificationColor(NotificationState notificationState) {
  switch (notificationState.notificationType) {
    case enumNotificationlist.Success:
      return Colors.green.shade100;
    case enumNotificationlist.Error:
      return Colors.red.shade100;
    default:
      return Colors.red.shade100;
  }
}*/
