import 'package:clash_royale_client/store/redux.dart';
import 'package:clash_royale_client/views/home/battles.dart';
import 'package:clash_royale_client/views/navbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import '../../api/api.dart';

List tabs = ["概览", "卡组", "战绩"];

typedef void GenerateQuote();

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
              child: RaisedButton(
                child: new Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    // display random quote and its author
                    StoreConnector<AppState, AppState>(
                      converter: (store) => store.state,
                      builder: (_, state) {
                        return new Text(
                          ' ${state.quote} \n -${state.author}',
                          textAlign: TextAlign.center,
                          style: const TextStyle(fontSize: 20.0),
                        );
                      },
                    ),
                    // generate quote button
                    StoreConnector<AppState, GenerateQuote>(
                      converter: (store) =>
                          () => store.dispatch(getRandomQuote),
                      builder: (_, generateQuoteCallback) {
                        return new FlatButton(
                            color: Colors.lightBlue,
                            onPressed: generateQuoteCallback,
                            child: new Text("generate random quote"));
                      },
                    )
                  ],
                ),
                onPressed: getVersion,
              ),
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
