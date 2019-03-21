import 'package:flutter/material.dart';
import 'dart:math' as math;

class _SliverAppBarDelegate extends SliverPersistentHeaderDelegate {
  _SliverAppBarDelegate({
    @required this.minHeight,
    @required this.maxHeight,
    @required this.child,
    @required this.shrinkChild,
  });

  final double minHeight;
  final double maxHeight;
  final Widget child;
  final Widget shrinkChild;

  @override
  double get minExtent => minHeight;

  @override
  double get maxExtent => math.max(maxHeight, minHeight);

  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    return SizedBox.expand(child: shrinkOffset == 150.0 ? shrinkChild : child);
  }

  @override
  bool shouldRebuild(_SliverAppBarDelegate oldDelegate) {
    return maxHeight != oldDelegate.maxHeight ||
        minHeight != oldDelegate.minHeight ||
        child != oldDelegate.child;
  }
}

SliverPersistentHeader buildHeader(BuildContext context) {
  return SliverPersistentHeader(
    pinned: true,
    delegate: _SliverAppBarDelegate(
        minHeight: 80.0,
        maxHeight: 150.0,
        child: SingleChildScrollView(
          child: Stack(
            children: <Widget>[
              Column(
                children: <Widget>[
                  Container(
                      height: 80.0, color: Theme.of(context).primaryColor),
                  Container(
                    height: 60.0,
                    color: Theme.of(context).secondaryHeaderColor,
                  )
                ],
              ),
              Container(
                  padding: EdgeInsets.all(5.0),
                  child: Card(
                    elevation: 5.0,
                    child: Container(
                      padding: EdgeInsets.only(left: 15.0, right: 15.0),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: <Widget>[
                              Container(
                                child: Column(
                                  children: <Widget>[
                                    Text('8', style: TextStyle(fontSize: 40.0)),
                                    Row(
                                      children: <Widget>[
                                        Icon(Icons.attach_money,
                                            color: Colors.grey),
                                        Text(
                                          '监控报警',
                                          style: TextStyle(color: Colors.grey),
                                        )
                                      ],
                                    )
                                  ],
                                ),
                              ),
                              Container(
                                child: Column(
                                  children: <Widget>[
                                    Text('8', style: TextStyle(fontSize: 40.0)),
                                    Row(
                                      children: <Widget>[
                                        Icon(Icons.attach_money,
                                            color: Colors.grey),
                                        Text(
                                          '监控报警',
                                          style: TextStyle(color: Colors.grey),
                                        )
                                      ],
                                    )
                                  ],
                                ),
                              ),
                              Container(
                                child: Column(
                                  children: <Widget>[
                                    Text('8', style: TextStyle(fontSize: 40.0)),
                                    Row(
                                      children: <Widget>[
                                        Icon(Icons.attach_money,
                                            color: Colors.grey),
                                        Text(
                                          '监控报警',
                                          style: TextStyle(color: Colors.grey),
                                        )
                                      ],
                                    )
                                  ],
                                ),
                              )
                            ],
                          ),
                          Divider(),
                          Row(
                            children: <Widget>[
                              Icon(Icons.add_alert),
                              Text('公告: 华北-北京区域云硬盘集群管理系统升级通知')
                            ],
                          )
                        ],
                      ),
                    ),
                  ))
            ],
          ),
        ),
        shrinkChild: Container(
            color: Theme.of(context).primaryColor,
            padding: EdgeInsets.all(5.0),
            child: Card(
              elevation: 5.0,
              child: Container(
                padding: EdgeInsets.only(top: 10.0, bottom: 10.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Row(
                      children: <Widget>[Icon(Icons.attach_money), Text('公告')],
                    ),
                    VerticalDivider(),
                    Row(
                      children: <Widget>[
                        Icon(Icons.attach_money, color: Colors.grey),
                        Text('10',
                            style: TextStyle(fontWeight: FontWeight.bold))
                      ],
                    ),
                    VerticalDivider(),
                    Row(
                      children: <Widget>[
                        Icon(Icons.attach_money, color: Colors.grey),
                        Text('9', style: TextStyle(fontWeight: FontWeight.bold))
                      ],
                    ),
                    VerticalDivider(),
                    Row(
                      children: <Widget>[
                        Icon(Icons.attach_money, color: Colors.grey),
                        Text('35',
                            style: TextStyle(fontWeight: FontWeight.bold))
                      ],
                    )
                  ],
                ),
              ),
            ))),
  );
}
