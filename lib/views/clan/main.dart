import 'package:flutter/material.dart';

class Clan extends StatelessWidget {
  static final String routeName = '/clan';

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('部落'),
      ),
      body: new Center(
        child: new Text('部落', style: new TextStyle(fontSize: 24.0)),
      ),
    );
  }
}
