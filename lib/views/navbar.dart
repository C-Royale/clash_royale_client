import 'package:clash_royale_client/router/router.dart';
import 'package:flutter/material.dart';

class Navbar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Drawer(
      child: ListView(
        // Important: Remove any padding from the ListView.
        padding: EdgeInsets.zero,
        children: <Widget>[
          new UserAccountsDrawerHeader(
            accountName: const Text('my9074'),
            accountEmail: const Text('313231068@qq.com'),
            currentAccountPicture: new CircleAvatar(
                backgroundColor: Colors.brown, child: new Text('TODO')),
          ),
          ListTile(
            title: Text('个人战绩'),
            trailing: new Icon(Icons.perm_identity),
            onTap: () {
              Navigator.of(context).pop();
              Routes.router.navigateTo(context, "/profile");
            },
          ),
          ListTile(
            title: Text('部落'),
            trailing: new Icon(Icons.people),
            onTap: () {
              Navigator.of(context).pop();
              Routes.router.navigateTo(context, "/clan");
            },
          ),
          ListTile(
            title: Text('竞技场'),
            trailing: new Icon(Icons.confirmation_number),
            onTap: () {
              // Update the state of the app
              // ...
            },
          ),
          ListTile(
            title: Text('卡牌'),
            trailing: new Icon(Icons.credit_card),
            onTap: () {
              // Update the state of the app
              // ...
            },
          ),
          new Divider(),
          ListTile(
            title: Text('设置'),
            trailing: new Icon(Icons.settings),
            onTap: () {
              Navigator.of(context).pop();
              Routes.router.navigateTo(context, "/setting");
            },
          ),
        ],
      ),
    );
  }
}
