import 'package:clash_royale_client/router/router.dart';
import 'package:clash_royale_client/utils/common_utils.dart';
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
            title: Text(CommonUtils.getLocale(context).navbar_record),
            trailing: new Icon(Icons.perm_identity),
            onTap: () {
              Navigator.of(context).pop();
              Routes.router.navigateTo(context, "/profile");
            },
          ),
          ListTile(
            title: Text(CommonUtils.getLocale(context).navbar_clan),
            trailing: new Icon(Icons.people),
            onTap: () {
              Navigator.of(context).pop();
              Routes.router.navigateTo(context, "/clan");
            },
          ),
          ListTile(
            title: Text(CommonUtils.getLocale(context).navbar_arena),
            trailing: new Icon(Icons.confirmation_number),
            onTap: () {
              Navigator.of(context).pop();
              Routes.router.navigateTo(context, "/arena");
            },
          ),
          ListTile(
            title: Text(CommonUtils.getLocale(context).navbar_cards),
            trailing: new Icon(Icons.credit_card),
            onTap: () {
              // Update the state of the app
              // ...
            },
          ),
          new Divider(),
          ListTile(
            title: Text(CommonUtils.getLocale(context).navbar_setting),
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
