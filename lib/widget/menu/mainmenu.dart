import 'package:flutter/material.dart';
import 'package:tpk_login_v2/widget/menu/sub_widget.dart';

import '../../page/page1.dart';
import '../../page/page2.dart';
import '../../page/page3.dart';
import '../../page/page4.dart';
import '../../page/page5.dart';

class MainMenu extends StatefulWidget {
  MainMenu({Key? key}) : super(key: key);

  @override
  _MainMenuState createState() => _MainMenuState();
}

class _MainMenuState extends State<MainMenu> {
  @override
  Widget build(BuildContext context) {
    //---------------------------------------------------------------

    return Container(
      height: (MediaQuery.of(context).size.height),
      width: 200,
      color: Color(0xff0b1327),
      //color: Colors.red,
      child: ListView(
        children: [
          Center(
            child: Data_Menu_mainmenu(),
          )
        ],
      ),
    );
  }
}

class Data_Menu_mainmenu extends StatelessWidget {
  //const Data_Menu_mainmenu({Key? key},this.pagein) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      //color: Colors.red,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center, //Axis-Y
        crossAxisAlignment: CrossAxisAlignment.center, //Axis-X

        children: [
          SizedBox(
            height: 20,
          ),
          Align(
              alignment: Alignment.center,
              child: Container(
                  height: 40,
                  width: 180,
                  color: Colors.white,
                  child: Padding(
                    padding: const EdgeInsetsDirectional.all(1),
                    child: Container(
                      height: 35,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        image: DecorationImage(
                          image: AssetImage("assets/images/logo_tpk.png"),
                          fit: BoxFit.fitHeight,
                        ),
                      ),
                    ),
                  ))),
          new menu_normal(
            name: "Page1",
            page: Page1(),
          ),
          new menu_normal(
            name: "Page2",
            page: Page2(),
          ),
          new menu_normal(
            name: "Page3",
            page: Page3(),
          ),
          new menu_normal(
            name: "Page4",
            page: Page4(),
          ),
          new menu_normal(
            name: "Page5",
            page: Page5(),
          ),
          Divider(
            color: Color(0x4dffffff),
            height: 12,
          ),
        ],
      ),
    );
  }
}

class Logomenu extends StatelessWidget {
  const Logomenu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      width: 80,
      color: Colors.white,

      child: Padding(
        padding: const EdgeInsetsDirectional.all(1),
        child: Container(
          height: 35,
          decoration: BoxDecoration(
            color: Colors.white,
            image: DecorationImage(
              image: AssetImage("assets/images/logo_tpk.png"),
              fit: BoxFit.fitHeight,
            ),
          ),
        ),
      ),

      //color: Colors.white,
    );
  }
}
