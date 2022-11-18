//-------------------------------------------------

import 'package:hydrated_bloc/hydrated_bloc.dart';

abstract class Example_EventHy {}

class Example_Pressed_01 extends Example_EventHy {}

class Example_Pressed_02 extends Example_EventHy {}

class Example_BlocHy extends HydratedBloc<Example_EventHy, int> {
  Example_BlocHy() : super(0) {
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

  @override
  int fromJson(Map<String, dynamic> json) => json['value'] as int;

  @override
  Map<String, int> toJson(int state) => {'value': state};
}
