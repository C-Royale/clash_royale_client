import 'package:clash_royale_client/api/api.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../home/main.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController _usertagController = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: new Builder(builder: (BuildContext context) {
      return SafeArea(
        child: ListView(
          padding: const EdgeInsets.symmetric(horizontal: 24.0),
          children: <Widget>[
            const SizedBox(height: 10.0),
            Column(
              children: <Widget>[
                Image.network(
                    'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1550251086493&di=ea58362adb08761a0b645b0963aaa001&imgtype=0&src=http%3A%2F%2Fgss2.bdstatic.com%2F-fo3dSag_xI4khGkpoWK1HF6hhy%2Fbaike%2Fw%3D400%2Fsign%3Dc726999d51ee3d6d22c686cb73166d41%2Fd439b6003af33a877f4b8a20ce5c10385343b5e2.jpg'),
                const SizedBox(height: 16.0),
                Text(
                  'Clash Royale',
                  style: Theme.of(context).textTheme.headline,
                ),
              ],
            ),
            const SizedBox(height: 120.0),
            Form(
              key: _formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: <Widget>[
                  TextFormField(
                    controller: _usertagController,
                    decoration: const InputDecoration(labelText: 'User Tag'),
                    validator: (value) {
                      if (value.isEmpty) {
                        return 'Please enter your TAG';
                      }
                    },
                  ),
                  Padding(
                      padding: const EdgeInsets.symmetric(vertical: 16.0),
                      child: ButtonBar(
                        children: <Widget>[
                          FlatButton(
                            child: const Text('CANCEL'),
                            onPressed: () {
                              _usertagController.clear();
                            },
                          ),
                          RaisedButton(
                            child: Text('Next'),
                            color: Colors.blue,
                            elevation: 4.0,
                            splashColor: Colors.blueGrey,
                            onPressed: () async {
                              if (_formKey.currentState.validate()) {
                                // Scaffold.of(context).showSnackBar(
                                //     SnackBar(content: Text('Processing Data')));
                                try {
                                  await player(_usertagController.text);
                                  // save usertag to SharedPreferences
                                  SharedPreferences prefs =
                                      await SharedPreferences.getInstance();
                                  prefs.setString(
                                      'UserTag', _usertagController.text);

                                  Navigator.pushAndRemoveUntil(
                                    context,
                                    MaterialPageRoute(
                                        builder: (BuildContext context) =>
                                            HomeState()),
                                    (Route<dynamic> route) => false,
                                  );
                                } catch (e) {
                                  Scaffold.of(context).showSnackBar(SnackBar(
                                    content: Text('User Tag Error'),
                                  ));
                                }
                              }
                            },
                          ),
                        ],
                      )),
                ],
              ),
            ),
          ],
        ),
      );
    }));
  }
}
