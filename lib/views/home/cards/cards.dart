import 'package:clash_royale_client/model/player.dart';
import 'package:clash_royale_client/store/state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';

class Cards extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return StoreConnector<AppState, Player>(
      converter: (store) => store.state.player,
      builder: (BuildContext context, Player player) {
        return Container(
          child: GridView.extent(
            maxCrossAxisExtent: 120.0,
            children: _buildImageItem(player.currentDeck),
          ),
        );
      },
    );
  }
}

List<Widget> _buildImageItem(List<CurrentDeck> currentDeck) {
  return currentDeck.map((CurrentDeck deck) {
    return Image.network(deck.icon, fit: BoxFit.cover);
  }).toList();
}
