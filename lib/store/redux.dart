import 'package:clash_royale_client/store/locale.dart';
import 'package:clash_royale_client/store/state.dart';
import 'package:clash_royale_client/store/user.dart';

AppState appReducer(AppState state, action) {
  return AppState(
    player: playerReducer(state.player, action),
    locale: localeReducer(state.locale, action),
  );
}
