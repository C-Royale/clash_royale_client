import 'package:clash_royale_client/utils/i18n/locale/base.dart';
import 'package:clash_royale_client/utils/i18n/locale/en.dart';
import 'package:clash_royale_client/utils/i18n/locale/zh.dart';
import 'package:flutter/material.dart';

///自定义多语言实现
class CRLocalizations {
  final Locale locale;

  CRLocalizations(this.locale);

  ///根据不同 locale.languageCode 加载不同语言对应
  ///LocaleEn 和 LocaleZh 都继承了 LocaleBase
  static Map<String, LocaleBase> _localizedValues = {
    'en': new LocaleEn(),
    'zh': new LocaleZh(),
  };

  LocaleBase get currentLocalized {
    return _localizedValues[locale.languageCode];
  }

  ///通过 Localizations 加载当前的 CRLocalizations
  ///获取对应的 LocaleBase
  static CRLocalizations of(BuildContext context) {
    return Localizations.of(context, CRLocalizations);
  }
}
