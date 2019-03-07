import 'package:clash_royale_client/store/redux.dart';
import 'package:clash_royale_client/store/user.dart';
import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:redux/redux.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController _usertagController = TextEditingController();
  final _formKey = GlobalKey<FormState>();
  String userTag;
  bool autovalidate = false;

  void submitLoginForm(BuildContext context) async {
    if (_formKey.currentState.validate()) {
      _formKey.currentState.save();
      try {
        _getStore()?.dispatch(LoginAction(_getStore(), context, userTag));

        // Navigator.pushAndRemoveUntil(
        //   context,
        //   MaterialPageRoute(builder: (BuildContext context) => HomeState()),
        //   (Route<dynamic> route) => false,
        // );
      } catch (e) {
        Scaffold.of(context).showSnackBar(SnackBar(
          content: Text('User Tag Error' + e),
        ));
      }
    } else {
      setState(() {
        autovalidate = true;
      });
    }
  }

  Store<AppState> _getStore() {
    return StoreProvider.of(context);
  }

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
                    onSaved: (value) {
                      userTag = value;
                    },
                    autovalidate: autovalidate,
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
                          new StoreBuilder<AppState>(builder: (context, store) {
                            return RaisedButton(
                              child: Text('Next'),
                              color: Colors.blue,
                              elevation: 4.0,
                              splashColor: Colors.blueGrey,
                              onPressed: () => submitLoginForm(context),
                            );
                          }),
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
