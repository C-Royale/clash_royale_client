import 'dart:convert';

import 'package:clash_royale_client/store/locale.dart';
import 'package:clash_royale_client/store/state.dart';
import 'package:clash_royale_client/utils/i18n/defaultLocalizations.dart';
import 'package:clash_royale_client/utils/i18n/locale/base.dart';
import 'package:flutter/material.dart';
import 'package:redux/redux.dart';

class CommonUtils {
  static LocaleBase getLocale(BuildContext context) {
    return CRLocalizations.of(context).currentLocalized;
  }

  static changeLocale(Store<AppState> store, int index) {
    Locale locale = store.state.locale;
    switch (index) {
      case 1:
        locale = Locale('zh', 'CH');
        break;
      case 2:
        locale = Locale('en', 'US');
        break;
    }
    store.dispatch(RefreshLocaleAction(locale));
  }

  static List<dynamic> decodeListResult(String data) {
    return json.decode(data);
  }

  static Map<String, dynamic> decodeMapResult(String data) {
    return json.decode(data);
  }

  static String encodeToString(String data) {
    return json.encode(data);
  }
}
