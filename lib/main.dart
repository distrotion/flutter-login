import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

//--------------------------------------

import 'bloc/Observe/appBlocObserver.dart';
import 'bloc/Rebuild/cubit.dart';

//--------------------------------------

void main() {
  BlocOverrides.runZoned(
    () => runApp(MyApp()),
    blocObserver: AppBlocObserver(),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
        providers: [
          BlocProvider<BlocPageRebuild>(
            create: (BuildContext context) =>
                BlocPageRebuild(), //For rebuild only page inside without app bar/left menu
          ),
        ],
        child: BlocBuilder<BlocPageRebuild, bool>(builder: (_, e) {
          return MaterialApp(
            title: 'Flutter Demo',
            theme: ThemeData(
              primarySwatch: Colors.blue,
            ),
            home: HomeScreen(),
          );
        }));
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('APP BAR'),
      ),
      // body: MainTable(),
    );
  }
}
