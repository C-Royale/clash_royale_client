import 'package:flutter/material.dart';
import 'package:dynamic_theme/dynamic_theme.dart';
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
        child: ListView(children: <Widget>[
          ThemeSetting(),
          Divider(),
          RaisedButton(
            child: Text("退出"),
            onPressed: () {
              Navigator.pushAndRemoveUntil(
                context,
                MaterialPageRoute(
                    builder: (BuildContext context) => LoginPage()),
                (Route<dynamic> route) => false,
              );
            },
          ),
        ]),
      ),
    );
  }
}

class ThemeSetting extends StatefulWidget {
  _ThemeSettingState createState() => _ThemeSettingState();
}

class _ThemeSettingState extends State<ThemeSetting> {
  bool _value = false;

  @override
  void initState() {
    // TODO: implement Theme.of(context).brightness == Brightness.dark with _value
    super.initState();
  }

  void _onChanged(bool value) {
    setState(() {
      _value = value;
      DynamicTheme.of(context).setBrightness(
          Theme.of(context).brightness == Brightness.dark
              ? Brightness.light
              : Brightness.dark);
    });
  }

  @override
  Widget build(BuildContext context) {
    return new SwitchListTile(
        title: new Text('切换主题'),
        secondary: const Icon(Icons.home),
        value: _value,
        onChanged: (bool value) {
          _onChanged(value);
        });
  }
}
