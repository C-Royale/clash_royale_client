import 'package:flutter/material.dart';

class ProfileItem extends StatelessWidget {
  final String title;

  ProfileItem({Key key, this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return new SizedBox(
      child: new Card(
        elevation: 15.0, //设置阴影
        child: new Column(
          // card只能有一个widget，但这个widget内容可以包含其他的widget
          children: [
            new ListTile(
              title: new Text(title,
                  style: new TextStyle(fontWeight: FontWeight.w500)),
            ),
            new Divider(),
            new ListTile(
              title: new Text('内容一',
                  style: new TextStyle(fontWeight: FontWeight.w500, fontSize: 12.0)),
              trailing: Text('value'),
            ),
          ],
        ),
      ),
    );
  }
}
