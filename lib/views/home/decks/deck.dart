import 'package:flutter/material.dart';

class Decks extends StatefulWidget {
  @override
  _DecksState createState() => _DecksState();
}

class _DecksState extends State<Decks>
    with AutomaticKeepAliveClientMixin<Decks> {
  @override
  Widget build(BuildContext context) {
    super.build(context);
    return Container();
  }

  @override
  void initState() {
    super.initState();
    print('_DecksState initState');
  }

  @override
  // TODO: implement wantKeepAlive
  bool get wantKeepAlive => true;
}
