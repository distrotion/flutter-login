import 'package:hydrated_bloc/hydrated_bloc.dart';

class Example_CubitHy extends HydratedCubit<String> {
  /// {@macro brightness_cubit}
  Example_CubitHy() : super('');

  /// Toggles the current brightness between light and dark.
  Future<void> ExampleCubit(String input) async {
    String output = input;
    emit(output);
  }

  Future<void> Flush(String input) async {
    String output = '';
    emit(output);
  }

  @override
  String fromJson(Map<String, dynamic> json) => json['value'] as String;

  @override
  Map<String, String> toJson(String state) => {'value': state};
}
