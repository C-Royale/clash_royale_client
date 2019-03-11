import 'package:clash_royale_client/utils/commonUtils.dart';
import 'package:clash_royale_client/views/login/login.dart';
import 'package:flutter/material.dart';
import 'package:dynamic_theme/dynamic_theme.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Setting extends StatefulWidget {
  _SettingState createState() => _SettingState();
}

class _SettingState extends State<Setting> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text(CommonUtils.getLocale(context).setting_title),
      ),
      body: new Center(
        child: ListView(children: <Widget>[
          ThemeSetting(),
          ListTile(
            leading: const Icon(Icons.language),
            title: const Text('Language'),
            trailing: PopupMenuButton<int>(
                onSelected: (int value) {
                  CommonUtils.changeLocale(StoreProvider.of(context), value);
                },
                padding: EdgeInsets.zero,
                itemBuilder: (BuildContext context) => <PopupMenuEntry<int>>[
                      const PopupMenuItem<int>(
                          value: 1, child: ListTile(title: Text('中文'))),
                      const PopupMenuItem<int>(
                          value: 2, child: ListTile(title: Text('English'))),
                    ]),
          ),
          Divider(),
          FlatButton(
            child: Text("退出"),
            onPressed: () {
              _showDialog(context);
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

void _showDialog(BuildContext context) {
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        title: new Text("确认退出？"),
        actions: <Widget>[
          new FlatButton(
            child: new Text(
              "取消",
              style: TextStyle(color: Colors.grey),
            ),
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
          new FlatButton(
            child: new Text("确认"),
            onPressed: () async {
              SharedPreferences prefs = await SharedPreferences.getInstance();
              prefs.remove('UserTag');
              Navigator.pushAndRemoveUntil(
                context,
                MaterialPageRoute(
                    builder: (BuildContext context) => LoginPage()),
                (Route<dynamic> route) => false,
              );
            },
          ),
        ],
      );
    },
  );
}
