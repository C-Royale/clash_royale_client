import 'package:flutter/material.dart';
import '../navbar.dart';

class Profile extends StatelessWidget {
  static final String routeName = '/profile';

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      drawer: new Navbar(),
      appBar: new AppBar(
        title: new Text('个人战绩'),
      ),
      body: new Center(
        child: new Text('个人战绩', style: new TextStyle(fontSize: 24.0)),
      ),
    );
  }
}
