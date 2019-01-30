import 'package:flutter/material.dart';
import 'views/profile/main.dart';
import 'views/home/main.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: new HomeState(), routes: <String, WidgetBuilder>{
      Profile.routeName: (BuildContext context) => new Profile(),
      HomeState.routeName: (BuildContext context) => new HomeState(),
    });
  }
}
