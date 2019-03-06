import 'package:clash_royale_client/model/player.dart';
import 'package:redux/redux.dart';

final playerReducer = combineReducers<Player>([
  TypedReducer<Player, UpdatePlayerAction>(_updateLoaded),
]);

Player _updateLoaded(Player player, action) {
  player = action.player;
  return player;
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

class UpdatePlayerAction {
  final Player player;
  UpdatePlayerAction(this.player);
}
