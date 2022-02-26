import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'bloc/BlocEvent/ChangePageEvent.dart';
import 'bloc/BlocEvent/LoginEvent.dart';
import 'bloc/cubit/NotificationEvent.dart';
import 'bloc/cubit/Rebuild.dart';
import 'data/global.dart';
import 'page/loginpage.dart';
import 'widget/appbar/AppBar.dart';
import 'widget/menu/mainmenu.dart';
import 'widget/notification/noti01.dart';

//-------------------------------------

late BuildContext MainBodyContext;
late BuildContext LoginContext;

class MainBlocRebuild extends StatelessWidget {
  const MainBlocRebuild({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<BlocPageRebuild, bool>(builder: (_, e) {
      return BlocProvider(
          create: (_) => Login_Bloc(),
          child: BlocBuilder<Login_Bloc, String>(
            builder: (context, tokenin) {
              return BlocBuilder<BlocPageRebuild, bool>(builder: (_, e) {
                return BlocProvider(
                    create: (_) => BlocNotification(),
                    child: BlocBuilder<BlocNotification, NotificationState>(
                      builder: (context, notification) {
                        contextGB = context;
                        return Stack(
                          children: [
                            pre_login(),
                            Positioned(
                                top: 64,
                                right: 24,
                                child: BlocBuilderNotification()),
                          ],
                        );
                      },
                    ));
              });
            },
          ));
    });
  }
}

class pre_login extends StatefulWidget {
  const pre_login({Key? key}) : super(key: key);

  @override
  State<pre_login> createState() => _pre_loginState();
}

class _pre_loginState extends State<pre_login> {
  @override
  void initState() {
    super.initState();
    context.read<Login_Bloc>().add(ReLogin());
    print("initState");
  }

  @override
  Widget build(BuildContext context) {
    LoginContext = context;
    if (token != '') {
      return BlocProvider(
          create: (_) => ChangePage_Bloc(),
          child: BlocBuilder<ChangePage_Bloc, Widget>(
            builder: (context, page) {
              return MainBody(page: page);
            },
          ));
    } else {
      return const Loginbody();
    }
  }
}

class MainBody extends StatelessWidget {
  MainBody({Key? key, required this.page}) : super(key: key);
  Widget page;

  @override
  Widget build(BuildContext context) {
    MainBodyContext = context;
    return Scaffold(
        appBar: AppBar(
          backgroundColor: const Color(0xFF0b1327),
          actions: <Widget>[App_Bar()],
        ),
        drawer: MainMenu(),
        body: page);
  }
}

class Loginbody extends StatelessWidget {
  const Loginbody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LoginPageWidget();
  }
}
