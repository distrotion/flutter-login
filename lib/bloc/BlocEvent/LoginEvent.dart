import 'package:flutter_bloc/flutter_bloc.dart';

//-------------------------------------------------

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
    emit('');
  }

  Future<void> _ReLogin_Function(String toAdd, Emitter<String> emit) async {
    emit('');
  }

  Future<void> _Logout_Function(String toAdd, Emitter<String> emit) async {
    emit('');
  }
}
