import 'package:flutter_bloc/flutter_bloc.dart';

//-------------------------------------------------

abstract class Example_Event {}

class Example_Pressed_01 extends Example_Event {}

class Example_Pressed_02 extends Example_Event {}

class Example_Bloc extends Bloc<Example_Event, int> {
  Example_Bloc() : super(0) {
    on<Example_Pressed_01>((event, emit) {
      return _Example_Function_01(0, emit);
    });
    on<Example_Pressed_02>((event, emit) {
      return _Example_Function_02(0, emit);
    });
  }
  Future<void> _Example_Function_01(int toAdd, Emitter<int> emit) async {
    emit(0);
  }

  Future<void> _Example_Function_02(int toAdd, Emitter<int> emit) async {
    emit(0);
  }
}
