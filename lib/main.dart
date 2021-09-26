import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'App/Views/Home_view.dart';

void main() => runApp(App());

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(),
      home: HomeView(),
    );
  }
}
