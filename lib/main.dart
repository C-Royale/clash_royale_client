import 'package:flutter/material.dart';
import 'views/navbar.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Clash_Royale Box',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: Scaffold(
          appBar: AppBar(
            title: Text('Clash_Royale Box'),
          ),
          drawer: Navbar()
        ));
  }
}
