import 'package:flutter_bloc/flutter_bloc.dart';

class Examplegrpc extends Cubit<String> {
  /// {@macro brightness_cubit}
  Examplegrpc() : super('');

  /// Toggles the current brightness between light and dark.
  Future<void> ExampleCubit(String input) async {
    String output = input;
    emit(output);
  }

  Future<void> Flush(String input) async {
    String output = '';
    emit(output);
  }
}
