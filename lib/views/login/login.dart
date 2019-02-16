import 'package:flutter/material.dart';
import '../home/main.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController _usertagController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          padding: const EdgeInsets.symmetric(horizontal: 24.0),
          children: <Widget>[
            const SizedBox(height: 80.0),
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
            PrimaryColorOverride(
              color: Color(0xFF442B2D),
              child: TextField(
                controller: _usertagController,
                decoration: const InputDecoration(
                  labelText: 'User Tag',
                ),
              ),
            ),
            Wrap(
              children: <Widget>[
                ButtonBar(
                  children: <Widget>[
                    FlatButton(
                      child: const Text('CANCEL'),
                      shape: const BeveledRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(7.0)),
                      ),
                      onPressed: () {
                        _usertagController.clear();
                      },
                    ),
                    RaisedButton(
                      child: const Text('NEXT'),
                      elevation: 8.0,
                      shape: const BeveledRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(7.0)),
                      ),
                      onPressed: () {
                        Navigator.pushReplacement(context,
                            new MaterialPageRoute(builder: (context) {
                          return new HomeState();
                        }));
                      },
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class PrimaryColorOverride extends StatelessWidget {
  const PrimaryColorOverride({Key key, this.color, this.child})
      : super(key: key);

  final Color color;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Theme(
      child: child,
      data: Theme.of(context).copyWith(primaryColor: color),
    );
  }
}
