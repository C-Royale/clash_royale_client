import 'package:clash_royale_client/api/api.dart';
import 'package:clash_royale_client/model/player.dart';
import 'package:clash_royale_client/router/router.dart';
import 'package:clash_royale_client/store/state.dart';
import 'package:clash_royale_client/utils/localstorage.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:redux/redux.dart';
import 'package:redux_thunk/redux_thunk.dart';

final playerReducer = combineReducers<Player>([
  TypedReducer<Player, UpdatePlayerAction>(_updateLoaded),
  TypedReducer<Player, LoginAction>(_loginAction),
]);

Player _updateLoaded(Player player, UpdatePlayerAction action) {
  player = action.player;
  return player;
}

Player _loginAction(Player player, LoginAction action) {
  return player;
}

ThunkAction<AppState> getPlayerAndStoreThunk(
    BuildContext context, String userTag) {
  return (Store<AppState> store) async {
    Response res = await player(userTag);
    Player user = Player.fromJson(res.data);
    await LocalStorage.save('UserTag', userTag);

    store.dispatch(UpdatePlayerAction(user));

    Routes.router.navigateTo(context, "/home", clearStack: true);
  };
}

class LoginAction {
  LoginAction(Store<dynamic> store, BuildContext context, String userTag) {
    store.dispatch(getPlayerAndStoreThunk(context, userTag));
  }
}

class UpdatePlayerAction {
  final Player player;
  UpdatePlayerAction(this.player);
}
