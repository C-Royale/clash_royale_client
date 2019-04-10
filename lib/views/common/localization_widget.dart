import 'package:clash_royale_client/store/state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';

class LocalizationsWidget extends StatefulWidget {
  final Widget child;

  LocalizationsWidget({Key key, this.child}) : super(key: key);

  @override
  State<LocalizationsWidget> createState() {
    return _LocalizationsWidget();
  }
}

class _LocalizationsWidget extends State<LocalizationsWidget> {
  @override
  Widget build(BuildContext context) {
    return StoreBuilder<AppState>(builder: (context, store) {
      ///通过 StoreBuilder 和 Localizations 实现实时多语言切换
      return Localizations.override(
        context: context,
        locale: store.state.locale,
        child: widget.child,
      );
    });
  }
}
