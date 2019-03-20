import 'package:clash_royale_client/utils/common_utils.dart';
import 'package:clash_royale_client/views/arena/header.dart';
import 'package:flutter/material.dart';

class Arena extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            expandedHeight: 100.0,
            pinned: true,
            flexibleSpace: FlexibleSpaceBar(
              title: Text(CommonUtils.getLocale(context).navbar_arena),
            ),
          ),
          buildHeader(),
          SliverToBoxAdapter(
              child: Container(
            padding: EdgeInsets.only(left: 20.0),
            child: Row(
              children: <Widget>[Text('我的云产品'), Icon(Icons.menu)],
            ),
          )),
          SliverPadding(
            padding: const EdgeInsets.all(5.0),
            sliver: new SliverGrid(
              //Grid
              gridDelegate: new SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
              ),
              delegate: new SliverChildBuilderDelegate(
                (BuildContext context, int index) {
                  return Card(
                    elevation: 5.0,
                    child: Container(
                      alignment: Alignment.center,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Icon(Icons.save),
                          Text(
                            '产品',
                            style: TextStyle(fontSize: 15.0),
                          )
                        ],
                      ),
                    ),
                  );
                },
                childCount: 25,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
