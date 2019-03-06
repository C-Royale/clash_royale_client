import 'package:clash_royale_client/model/player.dart';
import 'package:clash_royale_client/store/user.dart';

// AppState
class AppState {
  Player player;

  AppState({this.player});
}

AppState appReducer(AppState state, action) {
  return AppState(player: playerReducer(state.player, action));
}
