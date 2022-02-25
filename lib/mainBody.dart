import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'bloc/Rebuild/cubit.dart';
import 'data/global.dart';
import 'page/loginpage.dart';
import 'widget/appbar/AppBar.dart';
import 'widget/menu/mainmenu.dart';

//-------------------------------------

late BuildContext MainBodyContext;

class MainBlocRebuild extends StatelessWidget {
  const MainBlocRebuild({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<BlocPageRebuild, bool>(builder: (_, e) {
      return pre_login();
    });
  }
}

class pre_login extends StatelessWidget {
  const pre_login({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return token == ''
        ? MainBody(
            page: Container(
              color: Colors.blue,
            ),
          )
        : Loginbody();
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
    return LoginPage();
  }
}
