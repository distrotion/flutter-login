import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../data/global.dart';
import '../../page/page0.dart';

//-------------------------------------------------

abstract class ChangePage_Event {}

class ChangePage extends ChangePage_Event {}

class ChangePage_Bloc extends Bloc<ChangePage_Event, Widget> {
  ChangePage_Bloc() : super(const Page0()) {
    on<ChangePage>((event, emit) {
      return _ChangePage_Function(state, emit);
    });
  }
  Future<void> _ChangePage_Function(Widget toAdd, Emitter<Widget> emit) async {
    emit(CuPage);
  }
}
