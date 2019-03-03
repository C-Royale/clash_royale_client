import 'package:clash_royale_client/model/quote.dart';
import 'package:redux/redux.dart';
import 'package:redux_thunk/redux_thunk.dart';
import 'package:dio/dio.dart';

// AppState
class AppState {
  int _counter;
  String _quote;
  String _author;

  int get counter => _counter;
  String get quote => _quote;
  String get author => _author;

  AppState(this._counter, this._quote, this._author);
}

// Sync Action
enum Action { IncrementAction }

class UpdateQuoteAction {
  String _quote;
  String _author;

  String get quote => this._quote;
  String get author => this._author;

  UpdateQuoteAction(this._quote, this._author);
}

// ThunkAction
ThunkAction<AppState> getRandomQuote = (Store<AppState> store) async {
  try {
    Response response = await Dio().get(
        "http://quotesondesign.com/wp-json/posts?filter[orderby]=rand&filter[posts_per_page]=1");

    List<Quote> quotes =
        (response.data as List).map((e) => new Quote.fromJson(e)).toList();

    // This is to remove the <p></p> html tag received. This code is not crucial.
    String quote = quotes[0]
        .content
        .replaceAll(new RegExp('[(<p>)(</p>)]'), '')
        .replaceAll(new RegExp('&#8217;'), '\'');
    String author = quotes[0].title;

    store.dispatch(new UpdateQuoteAction(quote, author));
  } catch (e) {
    print('error: $e');
  }
};

// Reducer
AppState reducer(AppState prev, dynamic action) {
  if (action == Action.IncrementAction) {
    AppState newAppState =
        new AppState(prev.counter + 1, prev.quote, prev.author);

    return newAppState;
  } else if (action is UpdateQuoteAction) {
    AppState newAppState =
        new AppState(prev.counter, action.quote, action.author);

    return newAppState;
  } else {
    return prev;
  }
}
