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
    return new SizedBox.expand(
        child: shrinkOffset == 150.0 ? shrinkChild : child);
  }

  @override
  bool shouldRebuild(_SliverAppBarDelegate oldDelegate) {
    return maxHeight != oldDelegate.maxHeight ||
        minHeight != oldDelegate.minHeight ||
        child != oldDelegate.child;
  }
}

SliverPersistentHeader buildHeader() {
  return SliverPersistentHeader(
    pinned: true,
    delegate: _SliverAppBarDelegate(
        minHeight: 80.0,
        maxHeight: 150.0,
        child: Container(
            color: Colors.indigo,
            padding: EdgeInsets.all(5.0),
            child: new Card(
              elevation: 15.0, //设置阴影
              child: new Column(
                // card只能有一个widget，但这个widget内容可以包含其他的widget
                children: [
                  new ListTile(
                    title: new Text('内容一',
                        style: new TextStyle(
                            fontWeight: FontWeight.w500, fontSize: 12.0)),
                    trailing: Text('value'),
                  ),
                ],
              ),
            )),
        shrinkChild: Container(
            color: Colors.indigo,
            padding: EdgeInsets.all(5.0),
            child: new Card(
              elevation: 15.0,
              child: new Column(
                children: [
                  new ListTile(
                    title: new Text('内容一',
                        style: new TextStyle(
                            fontWeight: FontWeight.w500, fontSize: 12.0)),
                  ),
                ],
              ),
            ))),
  );
}
