import 'package:clash_royale_client/model/player.dart';
import 'package:clash_royale_client/store/state.dart';
import 'package:clash_royale_client/store/user.dart';
import 'package:clash_royale_client/utils/localstorage.dart';
import 'package:clash_royale_client/views/home/overview/card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';

class Overview extends StatelessWidget {
  final Widget child;

  Overview({Key key, this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return StoreConnector<AppState, _PlayerViewModel>(
      converter: (store) => _PlayerViewModel(
          player: store.state.player,
          handerRefresh: () async {
            String userTag = await LocalStorage.get('UserTag');
            store.dispatch(updatePlayerThunk(context, userTag));
            return null;
          }),
      builder: (context, vm) {
        return RefreshIndicator(
            child: SingleChildScrollView(
              physics: AlwaysScrollableScrollPhysics(),
              child: Container(
                margin: EdgeInsets.all(10.0),
                child: Column(
                  children: <Widget>[
                    ProfileItem(
                      title: '奖杯',
                      subItems: [
                        CardSubItem(
                            title: '最高杯数',
                            value: vm.player.stats.maxTrophies.toString()),
                        CardSubItem(
                            title: '当前杯数', value: vm.player.trophies.toString())
                      ],
                    ),
                    ProfileItem(
                      title: '状态统计',
                      subItems: [
                        CardSubItem(
                            title: '胜场次数',
                            value: vm.player.games.wins.toString()),
                        CardSubItem(
                            title: '失败场次',
                            value: vm.player.games.losses.toString()),
                        CardSubItem(
                            title: '三冠场次',
                            value: vm.player.stats.threeCrownWins.toString()),
                        CardSubItem(
                            title: '捐献次数',
                            value: vm.player.stats.totalDonations.toString())
                      ],
                    ),
                    ProfileItem(
                      title: '部落战概况',
                      subItems: [
                        CardSubItem(
                            title: '胜场次数',
                            value: vm.player.games.warDayWins.toString()),
                        CardSubItem(
                            title: '部落卡牌收集',
                            value:
                                vm.player.stats.clanCardsCollected.toString())
                      ],
                    ),
                    ProfileItem(
                      title: '锦标赛概况',
                      subItems: [
                        CardSubItem(
                            title: 'Max Wins',
                            value: vm.player.stats.challengeMaxWins.toString()),
                        CardSubItem(
                            title: '卡牌获取',
                            value: vm.player.stats.challengeCardsWon.toString())
                      ],
                    )
                  ],
                ),
              ),
            ),
            onRefresh: vm.handerRefresh);
      },
    );
  }
}

class _PlayerViewModel {
  final Player player;
  final void Function() handerRefresh;

  _PlayerViewModel({
    this.player,
    this.handerRefresh,
  });
}
