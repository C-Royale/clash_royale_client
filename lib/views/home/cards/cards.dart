import 'package:clash_royale_client/model/player.dart';
import 'package:clash_royale_client/store/state.dart';
import 'package:clash_royale_client/views/common/deck_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:transparent_image/transparent_image.dart';

class Cards extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return StoreConnector<AppState, Player>(
      converter: (store) => store.state.player,
      builder: (BuildContext context, Player player) {
        return Container(
          padding: EdgeInsets.only(top: 10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                '当前卡组',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              GridView.count(
                shrinkWrap: true,
                children: buildDeckItem(player.currentDeck),
                crossAxisCount: 4,
              ),
            ],
          ),
        );
      },
    );
  }
}
