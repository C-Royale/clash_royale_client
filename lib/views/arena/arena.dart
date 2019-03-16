import 'package:flutter/material.dart';

class Arena extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            expandedHeight: 200.0,
            floating: true,
            pinned: true,
            flexibleSpace: FlexibleSpaceBar(
              title: Text('Arena'),
            ),
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate(
                (context, index) => ListTile(title: Text('List'))),
          )
        ],
      ),
    );
  }
}
