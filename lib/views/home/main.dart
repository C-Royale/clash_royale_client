import 'package:clash_royale_client/utils/common_utils.dart';
import 'package:clash_royale_client/views/home/decks/deck.dart';
import 'package:clash_royale_client/views/home/overview/overview.dart';
import 'package:clash_royale_client/views/home/cards/cards.dart';
import 'package:clash_royale_client/views/navbar.dart';
import 'package:flutter/material.dart';

List tabs = ["概览", "卡组", "Decks"];

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
            Overview(),
            Cards(),
            Decks()
          ],
        ),
        drawer: Navbar());
  }
}
