import 'package:clash_royale_client/utils/i18n/defaultLocalizations.dart';
import 'package:clash_royale_client/utils/i18n/locale/base.dart';
import 'package:flutter/material.dart';

class CommonUtils {
  static LocaleBase getLocale(BuildContext context) {
    return CRLocalizations.of(context).currentLocalized;
  }
}
