import 'package:flutter/material.dart';
import '../login/login.dart';

class Setting extends StatefulWidget {
  _SettingState createState() => _SettingState();
}

class _SettingState extends State<Setting> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('设置'),
      ),
      body: new Center(
        child: RaisedButton(
          child: Text("退出"),
          onPressed: () {
            Navigator.pushAndRemoveUntil(
              context,
              MaterialPageRoute(builder: (BuildContext context) => LoginPage()),
              (Route<dynamic> route) => false,
            );
          },
        ),
      ),
    );
  }
}
