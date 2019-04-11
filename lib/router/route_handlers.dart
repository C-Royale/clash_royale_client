import 'package:clash_royale_client/main.dart';
import 'package:clash_royale_client/views/arena/arena.dart';
import 'package:clash_royale_client/views/clan/main.dart';
import 'package:clash_royale_client/views/common/localization_widget.dart';
import 'package:clash_royale_client/views/home/main.dart';
import 'package:clash_royale_client/views/login/login.dart';
import 'package:clash_royale_client/views/profile/main.dart';
import 'package:clash_royale_client/views/setting/setting.dart';
import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart';

var rootHandler = Handler(
    handlerFunc: (BuildContext context, Map<String, List<String>> params) {
  return MainPage();
});

var loginRouteHandler = Handler(
    handlerFunc: (BuildContext context, Map<String, List<String>> params) {
  return LocalizationsWidget(child: LoginPage());
});

var homeRouteHandler = Handler(
    handlerFunc: (BuildContext context, Map<String, List<String>> params) {
  return LocalizationsWidget(child: HomeState());
});

var profileRouteHandler = Handler(
    handlerFunc: (BuildContext context, Map<String, List<String>> params) {
  return LocalizationsWidget(child: Profile());
});

var settingRouteHandler = Handler(
    handlerFunc: (BuildContext context, Map<String, List<String>> params) {
  return LocalizationsWidget(child: Setting());
});

var clanRouteHandler = Handler(
    handlerFunc: (BuildContext context, Map<String, List<String>> params) {
  return LocalizationsWidget(child: Clan());
});

var arenaRouteHandler = Handler(
    handlerFunc: (BuildContext context, Map<String, List<String>> params) {
  return LocalizationsWidget(child: Arena());
});
