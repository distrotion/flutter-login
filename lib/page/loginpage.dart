import 'package:flutter/material.dart';
//--------------------------------------------- Bloc
import 'package:flutter_bloc/flutter_bloc.dart';

import '../bloc/BlocEvent/LoginEvent.dart';
import '../mainBody.dart';
import '../widget/common/ComInputText.dart';
import '../data/global.dart';

class LoginPageWidget extends StatelessWidget {
  const LoginPageWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SizedBox(
          height: 400,
          width: 350,
          child: SingleChildScrollView(
              child: Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15.0),
            ),
            child: Padding(
              padding: const EdgeInsetsDirectional.only(start: 50, end: 50),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const SizedBox(
                    height: 50,
                  ),
                  Container(
                    height: 100,
                    // width: 300,
                    decoration: const BoxDecoration(
                      // color: Colors.red,
                      image: DecorationImage(
                        image: AssetImage("assets/images/logo_tpk.png"),
                        fit: BoxFit.none,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  SizedBox(
                    height: 40,
                    // child: TextFormField(
                    //   onChanged: (value) {},
                    //   initialValue: "",
                    //   decoration: InputDecoration(
                    //     contentPadding: EdgeInsets.all(8),
                    //     hintText: 'TPK ID',
                    //     hintStyle: const TextStyle(
                    //       fontFamily: 'Mitr',
                    //       color: Color(0xffb2b2b2),
                    //       fontSize: 14,
                    //       fontWeight: FontWeight.w300,
                    //       fontStyle: FontStyle.normal,
                    //       letterSpacing: 0,
                    //     ),
                    //     border: OutlineInputBorder(
                    //       borderSide:
                    //           const BorderSide(color: Colors.red, width: 1),
                    //       borderRadius: BorderRadius.circular(8),
                    //     ),
                    //     // suffixIcon: Icon(
                    //     //   Icons.search,
                    //     // ),
                    //   ),
                    // ),
                    child: ComInputText(
                      height: 40,
                      width: 240,
                      isContr: logindata.isControl,
                      fnContr: (input) {
                        logindata.isControl = input;
                      },
                      sValue: logindata.userID,
                      returnfunc: (String s) {
                        logindata.userID = s;
                      },
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  SizedBox(
                    height: 40,
                    // child: TextFormField(
                    //   onChanged: (value) {},
                    //   obscureText: true,
                    //   initialValue: "",
                    //   decoration: InputDecoration(
                    //     contentPadding: EdgeInsets.all(8),
                    //     hintText: 'Password',
                    //     hintStyle: const TextStyle(
                    //       fontFamily: 'Mitr',
                    //       color: Color(0xffb2b2b2),
                    //       fontSize: 14,
                    //       fontWeight: FontWeight.w300,
                    //       fontStyle: FontStyle.normal,
                    //       letterSpacing: 0,
                    //     ),
                    //     border: OutlineInputBorder(
                    //       borderSide:
                    //           const BorderSide(color: Colors.red, width: 1),
                    //       borderRadius: BorderRadius.circular(8),
                    //     ),

                    //     // suffixIcon: Icon(
                    //     //   Icons.search,
                    //     // ),
                    //   ),
                    // ),
                    child: ComInputText(
                      height: 40,
                      width: 240,
                      isPassword: true,
                      isContr: logindata.isControl,
                      fnContr: (input) {
                        logindata.isControl = input;
                      },
                      sValue: logindata.userPASS,
                      returnfunc: (String s) {
                        logindata.userPASS = s;
                      },
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const _LoginSignin(),
                  const SizedBox(
                    height: 50,
                  ),
                ],
              ),
            ),
          )),
        ),
      ),
    );
  }
}

class _LoginSignin extends StatelessWidget {
  const _LoginSignin({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
        onTap: () {
          // BlocProvider.of<SwPageCubit>(context).togglePage("Page1");
          LoginContext.read<Login_Bloc>().add(LoginPage());
        },
        child: Container(
          height: 40,
          decoration: BoxDecoration(
            color: Colors.blue,
            borderRadius: BorderRadius.circular(8),
          ),
          child: const Align(
            alignment: Alignment.center,
            child: Text(
              "Sign IN",
              style: TextStyle(
                fontFamily: 'Mitr',
                color: Colors.black,
                fontSize: 14,
                fontWeight: FontWeight.w300,
                fontStyle: FontStyle.normal,
                letterSpacing: 0,
              ),
            ),
          ),
        ));
  }
}
