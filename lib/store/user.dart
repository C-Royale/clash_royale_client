import 'package:clash_royale_client/model/player.dart';
import 'package:clash_royale_client/store/redux.dart';
import 'package:redux/redux.dart';
import 'package:redux_thunk/redux_thunk.dart';

final playerReducer = combineReducers<Player>([
  TypedReducer<Player, UpdatePlayerAction>(_updateLoaded),
]);

Player _updateLoaded(Player player, action) {
  player = action.player;
  return player;
}

ThunkAction<AppState> waitAndDispatch(int secondsToWait, Player player) {
  return (Store<AppState> store) async {
    await new Future.delayed(
      new Duration(seconds: secondsToWait),
      () => print("Waiting for you!"),
    );

    store.dispatch(UpdatePlayerAction(player));
  };
}

class UpdatePlayerAction {
  final Player player;
  UpdatePlayerAction(this.player);
}
