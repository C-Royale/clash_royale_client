import 'package:clash_royale_client/model/player.dart';
import 'package:clash_royale_client/store/state.dart';
import 'package:clash_royale_client/views/home/overview/card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';

class Overview extends StatelessWidget {
  final Widget child;

  Overview({Key key, this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return StoreConnector<AppState, Player>(
      converter: (store) => store.state.player,
      builder: (context, player) {
        return SingleChildScrollView(
          child: Container(
            margin: EdgeInsets.all(10.0),
            child: Column(
              children: <Widget>[
                ProfileItem(
                  title: '奖杯',
                  subItems: [
                    CardSubItem(
                        title: '最高杯数',
                        value: player.stats.maxTrophies.toString()),
                    CardSubItem(
                        title: '当前杯数', value: player.trophies.toString())
                  ],
                ),
                ProfileItem(
                  title: '状态统计',
                  subItems: [
                    CardSubItem(
                        title: '胜场次数', value: player.games.wins.toString()),
                    CardSubItem(
                        title: '失败场次', value: player.games.losses.toString()),
                    CardSubItem(
                        title: '三冠场次',
                        value: player.stats.threeCrownWins.toString()),
                    CardSubItem(
                        title: '捐献次数',
                        value: player.stats.totalDonations.toString())
                  ],
                ),
                ProfileItem(
                  title: '部落战概况',
                  subItems: [
                    CardSubItem(
                        title: '胜场次数',
                        value: player.games.warDayWins.toString()),
                    CardSubItem(
                        title: '部落卡牌收集',
                        value: player.stats.clanCardsCollected.toString())
                  ],
                ),
                ProfileItem(
                  title: '锦标赛概况',
                  subItems: [
                    CardSubItem(
                        title: 'Max Wins',
                        value: player.stats.challengeMaxWins.toString()),
                    CardSubItem(
                        title: '卡牌获取',
                        value: player.stats.challengeCardsWon.toString())
                  ],
                )
              ],
            ),
          ),
        );
      },
    );
  }
}
