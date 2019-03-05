import 'package:clash_royale_client/model/player.dart';
import 'package:redux/redux.dart';

final playerReducer = combineReducers<Player>([
  TypedReducer<Player, UpdatePlayerAction>(_updateLoaded),
]);

Player _updateLoaded(Player player, action) {
  print('action ${action}');
  player = action.player;
  return player;
}

class UpdatePlayerAction {
  final Player player;
  UpdatePlayerAction(this.player);
}
