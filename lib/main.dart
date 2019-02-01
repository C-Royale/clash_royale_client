import 'package:flutter/material.dart';
import 'views/profile/main.dart';
import 'views/home/main.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: new HomeState());
  }
}
