import 'package:flutter/material.dart';
import '../navbar.dart';
import './battles.dart';

List tabs = ["概览", "卡组", "战绩"];

class HomeState extends StatefulWidget {
  static final String routeName = '/home';

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
          title: Text('Clash_Royale Box (beta)'),
          bottom: TabBar(
              controller: _tabController,
              tabs: tabs.map((e) => Tab(text: e)).toList()),
        ),
        body: TabBarView(
          controller: _tabController,
          children: [
            Container(
              alignment: Alignment.center,
              child: Text('概览', textScaleFactor: 5),
            ),
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
