import 'package:flutter/material.dart';
import '../navbar.dart';

TabController _tabController;

List tabs = ["概览", "卡组", "战绩"];

class HomeState extends StatefulWidget {
  static final String routeName = '/home';

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<HomeState> with SingleTickerProviderStateMixin {
  
  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: tabs.length, vsync: this);
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
          children: tabs.map((e) {
            return Container(
              alignment: Alignment.center,
              child: Text(e, textScaleFactor: 5),
            );
          }).toList(),
        ),
        drawer: Navbar());
  }
}
