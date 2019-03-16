import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart';
import './route_handlers.dart';

class Routes {
  static Router router;
  static String root = "/";
  static String login = "/login";
  static String home = "/home";
  static String profile = "/profile";
  static String setting = "/setting";
  static String clan = "/clan";
  static String arena = "/arena";

  static void configureRoutes(Router router) {
    router.notFoundHandler = new Handler(
        handlerFunc: (BuildContext context, Map<String, List<String>> params) {
      print("ROUTE WAS NOT FOUND !!!");
    });
    router.define(root, handler: rootHandler);
    router.define(login,
        handler: loginRouteHandler, transitionType: TransitionType.inFromRight);
    router.define(home,
        handler: homeRouteHandler, transitionType: TransitionType.inFromRight);
    router.define(profile,
        handler: profileRouteHandler,
        transitionType: TransitionType.inFromRight);
    router.define(setting,
        handler: settingRouteHandler,
        transitionType: TransitionType.inFromRight);
    router.define(clan,
        handler: clanRouteHandler, transitionType: TransitionType.inFromRight);
    router.define(arena,
        handler: arenaRouteHandler, transitionType: TransitionType.inFromRight);

    Routes.router = router;
  }
}
