import 'package:clash_royale_client/model/player.dart';
import 'package:clash_royale_client/store/state.dart';
import 'package:clash_royale_client/utils/common_utils.dart';
import 'package:clash_royale_client/views/home/battles.dart';
import 'package:clash_royale_client/views/home/overview/overview.dart';
import 'package:clash_royale_client/views/navbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:redux/redux.dart';

List tabs = ["概览", "卡组", "战绩"];

typedef void GenerateQuote();

class HomeState extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<HomeState> with SingleTickerProviderStateMixin {
  TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: tabs.length, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(CommonUtils.getLocale(context).app_name),
          bottom: TabBar(
              controller: _tabController,
              tabs: tabs.map((e) => Tab(text: e)).toList()),
        ),
        body: TabBarView(
          controller: _tabController,
          children: [
            // Temporary things
            // StoreConnector<AppState, Player>(
            //     distinct: true,
            //     converter: (Store<AppState> store) => store.state.player,
            //     builder: (_, player) {
            //       if (player.name != null) {
            //         return Text(player.name);
            //       } else {
            //         return Text('-');
            //       }
            //     }),
            Overview(),
            Container(
              alignment: Alignment.center,
              child: Text('卡组', textScaleFactor: 5),
            ),
            Container(
              child: Battles(),
            )
          ],
        ),
        drawer: Navbar());
  }
}
