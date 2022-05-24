import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../data/global.dart';
import '../cubit/NotificationEvent.dart';

//-------------------------------------------------

Future<SharedPreferences> _prefs = SharedPreferences.getInstance();
late Future<String> tokenSP;

abstract class LoginEvent {}

class LoginPage extends LoginEvent {}

class ReLogin extends LoginEvent {}

class Logout extends LoginEvent {}

class Login_Bloc extends Bloc<LoginEvent, String> {
  Login_Bloc() : super('') {
    on<LoginPage>((event, emit) {
      return _LoginPage_Function(state, emit);
    });
    on<ReLogin>((event, emit) {
      return _ReLogin_Function(state, emit);
    });
    on<Logout>((event, emit) {
      return _Logout_Function(state, emit);
    });
  }

  Future<void> _LoginPage_Function(String toAdd, Emitter<String> emit) async {
    final SharedPreferences prefs = await _prefs;
    // token = (prefs.getString('token') ?? '');
    token = 'test';
    USERDATA.UserLV = 2;

    tokenSP = prefs.setString("tokenSP", token).then((bool success) {
      return state;
    });

    if (token != '') {
      BlocProvider.of<BlocNotification>(contextGB).UpdateNotification(
          "Success", "Login OK", enumNotificationlist.Success);
    } else {
      BlocProvider.of<BlocNotification>(contextGB).UpdateNotification("Error",
          "user or password have some problem", enumNotificationlist.Error);
    }

    // BlocProvider.of<Notification_Bloc>(contextGB)
    //   .UpdateNotification("", "Login OK", enumNotificationlist.Success);

    emit(token);
  }

  Future<void> _ReLogin_Function(String toAdd, Emitter<String> emit) async {
    final SharedPreferences prefs = await _prefs;
    token = (prefs.getString('tokenSP') ?? '');
    USERDATA.UserLV = 2;
    emit(token);
  }

  Future<void> _Logout_Function(String toAdd, Emitter<String> emit) async {
    final SharedPreferences prefs = await _prefs;
    token = '';
    USERDATA.UserLV = 0;

    tokenSP = prefs.setString("tokenSP", token).then((bool success) {
      return state;
    });

    if (token == '') {
      BlocProvider.of<BlocNotification>(contextGB)
          .UpdateNotification("", "Logout", enumNotificationlist.Success);
    }

    emit('');
  }
}
