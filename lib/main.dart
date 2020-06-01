import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:rxdart_demo/blocs/reader_bloc.dart';
import 'package:rxdart_demo/screens/launch.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Provider(
          create: (context) => ReaderBloc(),
          child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.red,
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        home: Launch(),
      ),
    );
  }
}

