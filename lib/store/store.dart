import 'package:clash_royale_client/model/player.dart';
import 'package:clash_royale_client/store/redux.dart';
import 'package:clash_royale_client/store/state.dart';
import 'package:redux/redux.dart';
import 'package:redux_persist/redux_persist.dart';
import 'package:redux_thunk/redux_thunk.dart';
import 'package:redux_persist_flutter/redux_persist_flutter.dart';

final persistor = Persistor<AppState>(
    storage: FlutterStorage(),
    serializer: JsonSerializer<AppState>(AppState.fromJson),
    debug: true);

Future<Store<AppState>> createStore() async {
  final initialState = await persistor.load();

  return new Store(
    appReducer,
    initialState: initialState ?? AppState(player: Player.empty()),
    middleware: [thunkMiddleware, persistor.createMiddleware()],
  );
}
