import 'package:flutter/material.dart';
import 'views/home/main.dart';
import 'views/login/login.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: new LoginPage());
  }
}
