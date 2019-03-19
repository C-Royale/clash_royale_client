import 'package:clash_royale_client/views/home/overview/card.dart';
import 'package:flutter/material.dart';

class Overview extends StatelessWidget {
  final Widget child;

  Overview({Key key, this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10.0),
      child: Column(
        children: <Widget>[ProfileItem('奖杯'), ProfileItem('战绩')],
      ),
    );
  }
}
