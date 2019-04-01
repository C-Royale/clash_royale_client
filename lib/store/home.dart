import 'package:clash_royale_client/api/api.dart';
import 'package:clash_royale_client/model/deck.dart';
import 'package:clash_royale_client/model/home_state.dart';
import 'package:clash_royale_client/store/state.dart';
import 'package:dio/dio.dart';
import 'package:redux/redux.dart';
import 'package:redux_thunk/redux_thunk.dart';

final homeStateReducer = combineReducers<HomeState>([
  TypedReducer<HomeState, GetDecksAction>(_getDecksAction),
]);

HomeState _getDecksAction(HomeState homeState, GetDecksAction action) {
  homeState.decks = action.decks;
  return homeState;
}

ThunkAction<AppState> getDecksThunk() {
  return (Store<AppState> store) async {
    Response res = await popularDecks();
    List<Deck> decks =
        (res.data as List).map((item) => Deck.fromJson(item)).toList();
    store.dispatch(GetDecksAction(decks));
  };
}

class GetDecksAction {
  final List<Deck> decks;
  GetDecksAction(this.decks);
}
