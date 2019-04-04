import 'package:clash_royale_client/model/deck.dart';
import 'package:clash_royale_client/store/home.dart';
import 'package:clash_royale_client/store/state.dart';
import 'package:clash_royale_client/views/common/deck_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:transparent_image/transparent_image.dart';

class Decks extends StatefulWidget {
  @override
  _DecksState createState() => _DecksState();
}

class _DecksState extends State<Decks>
    with AutomaticKeepAliveClientMixin<Decks> {
  @override
  Widget build(BuildContext context) {
    super.build(context);
    return StoreConnector<AppState, List<Deck>>(
        onInit: (store) => store.dispatch(getDecksThunk()),
        converter: (store) => store.state.homeState.decks,
        builder: (BuildContext context, List<Deck> decks) {
          return Container(
            child: ListView.builder(
              padding: EdgeInsets.only(bottom: 15.0),
              itemCount: decks?.length ?? [],
              itemBuilder: (BuildContext context, int index) {
                return GridView.count(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  children: buildDeckItem(decks[index].cards),
                  crossAxisCount: 4,
                );
              },
            ),
          );
        });
  }

  @override
  void initState() {
    super.initState();
  }

  @override
  // TODO: implement wantKeepAlive
  bool get wantKeepAlive => true;
}
