import 'package:clash_royale_client/model/player.dart';
import 'package:clash_royale_client/model/quote.dart';
import 'package:clash_royale_client/store/user.dart';
import 'package:redux/redux.dart';
import 'package:redux_thunk/redux_thunk.dart';
import 'package:dio/dio.dart';

// AppState
class AppState {
  Player player;

  AppState({this.player});
}

// // ThunkAction
// ThunkAction<AppState> getRandomQuote = (Store<AppState> store) async {
//   try {
//     Response response = await Dio().get(
//         "http://quotesondesign.com/wp-json/posts?filter[orderby]=rand&filter[posts_per_page]=1");

//     List<Quote> quotes =
//         (response.data as List).map((e) => new Quote.fromJson(e)).toList();

//     // This is to remove the <p></p> html tag received. This code is not crucial.
//     String quote = quotes[0]
//         .content
//         .replaceAll(new RegExp('[(<p>)(</p>)]'), '')
//         .replaceAll(new RegExp('&#8217;'), '\'');
//     String author = quotes[0].title;

//     store.dispatch(new UpdateQuoteAction(quote, author));
//   } catch (e) {
//     print('error: $e');
//   }
// };

// // Reducer
// AppState reducer(AppState prev, dynamic action) {
//   if (action is UpdateQuoteAction) {
//     AppState newAppState = new AppState(action.quote, action.author);
//     return newAppState;
//   } else {
//     return prev;
//   }
// }
AppState appReducer(AppState state, action) {
  return AppState(
    player: playerReducer(state.player, action)
  );
}

