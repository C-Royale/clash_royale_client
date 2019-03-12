import 'dart:async';
import 'package:clash_royale_client/router/router.dart';
import 'package:clash_royale_client/store/state.dart';
import 'package:clash_royale_client/store/store.dart';
import 'package:clash_royale_client/utils/i18n/localizationsDelegate.dart';
import 'package:clash_royale_client/views/common/localization_widget.dart';
import 'package:clash_royale_client/views/home/main.dart';
import 'package:clash_royale_client/views/login/login.dart';
import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart';
import 'package:dynamic_theme/dynamic_theme.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:redux/redux.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:flutter_redux/flutter_redux.dart';

void main() async {
  final router = new Router();
  Routes.configureRoutes(router);
  var store = await createStore();
  runApp(MyApp(store));
}

class MyApp extends StatelessWidget {
  final Store<AppState> store;

  MyApp(this.store);

  @override
  Widget build(BuildContext context) {
    return StoreProvider<AppState>(
        store: store,
        child: new DynamicTheme(
            defaultBrightness: Brightness.light,
            data: (brightness) => new ThemeData(
                  primarySwatch: Colors.indigo,
                  brightness: brightness,
                ),
            themedWidgetBuilder: (context, theme) {
              return new MaterialApp(
                  title: 'Flutter Demo',
                  theme: theme,
                  onGenerateRoute: Routes.router.generator,
                  locale: store.state.locale,
                  home: MainPage(),
                  localizationsDelegates: [
                    GlobalMaterialLocalizations.delegate,
                    GlobalWidgetsLocalizations.delegate,
                    CRLocalizationsDelegate.delegate,
                  ],
                  supportedLocales: [
                    const Locale('zh', 'CH'),
                    const Locale('en', 'US'),
                  ]);
            }));
  }
}

class MainPage extends StatefulWidget {
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  var _result;

  Future<String> getUserTag() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.getString('UserTag');
  }

  @override
  void initState() {
    super.initState();
    getUserTag().then((onValue) {
      setState(() {
        _result = onValue;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return _result == null
        ? LocalizationsWidget(child: LoginPage())
        : LocalizationsWidget(child: HomeState());
  }
}
