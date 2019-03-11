import 'dart:async';

import 'package:clash_royale_client/utils/i18n/defaultLocalizations.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class CRLocalizationsDelegate extends LocalizationsDelegate<CRLocalizations> {
  CRLocalizationsDelegate();

  @override
  bool isSupported(Locale locale) {
    ///支持中文和英语
    return ['en', 'zh'].contains(locale.languageCode);
  }

  ///根据 locale，创建一个对象用于提供当前 locale 下的文本显示
  @override
  Future<CRLocalizations> load(Locale locale) {
    return new SynchronousFuture<CRLocalizations>(new CRLocalizations(locale));
  }

  @override
  bool shouldReload(LocalizationsDelegate<CRLocalizations> old) {
    return false;
  }

  ///全局静态的代理
  static CRLocalizationsDelegate delegate = new CRLocalizationsDelegate();
}
