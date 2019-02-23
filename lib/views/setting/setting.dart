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
          ListTile(
              leading: const Icon(Icons.language),
              title: const Text('Language'),
              trailing: const Icon(Icons.chevron_right),
              onTap: () {
                print('language is click...');
              }),
          Divider(),
          FlatButton(
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
          Divider(),
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
  void didChangeDependencies() {
    super.didChangeDependencies();
    _value = Theme.of(context).brightness == Brightness.dark;
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
        title: new Text('夜间模式'),
        secondary: const Icon(Icons.brightness_medium),
        value: _value,
        onChanged: (bool value) {
          _onChanged(value);
        });
  }
}
