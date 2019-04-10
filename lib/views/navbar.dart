import 'package:clash_royale_client/router/router.dart';
import 'package:clash_royale_client/utils/common_utils.dart';
import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart';

class Navbar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        // Important: Remove any padding from the ListView.
        padding: EdgeInsets.zero,
        children: <Widget>[
          UserAccountsDrawerHeader(
            accountName: const Text('my9074'),
            accountEmail: const Text('313231068@qq.com'),
            currentAccountPicture: CircleAvatar(
                backgroundColor: Colors.brown, child: Text('TODO')),
          ),
          ListTile(
            title: Text(CommonUtils.getLocale(context).navbar_record),
            trailing: Icon(Icons.perm_identity),
            onTap: () {
              Navigator.of(context).pop();
              Routes.router.navigateTo(context, "/profile",
                  transition: TransitionType.native);
            },
          ),
          ListTile(
            title: Text(CommonUtils.getLocale(context).navbar_clan),
            trailing: Icon(Icons.people),
            onTap: () {
              Navigator.of(context).pop();
              Routes.router.navigateTo(context, "/clan",
                  transition: TransitionType.native);
            },
          ),
          ListTile(
            title: Text(CommonUtils.getLocale(context).navbar_arena),
            trailing: Icon(Icons.confirmation_number),
            onTap: () {
              Navigator.of(context).pop();
              Routes.router.navigateTo(context, "/arena",
                  transition: TransitionType.native);
            },
          ),
          ListTile(
            title: Text(CommonUtils.getLocale(context).navbar_cards),
            trailing: Icon(Icons.credit_card),
            onTap: () {
              // Update the state of the app
              // ...
            },
          ),
          Divider(),
          ListTile(
            title: Text(CommonUtils.getLocale(context).navbar_setting),
            trailing: Icon(Icons.settings),
            onTap: () {
              Navigator.of(context).pop();
              Routes.router.navigateTo(context, "/setting",
                  transition: TransitionType.native);
            },
          ),
        ],
      ),
    );
  }
}
