import 'package:flutter/material.dart';

class ProfileItem extends StatelessWidget {
  final String title;
  final List<CardSubItem> subItems;

  ProfileItem({Key key, this.title, this.subItems = const []})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Card(
        elevation: 15.0,
        child: Column(
          children: [
            ListTile(
              title: Text(title, style: TextStyle(fontWeight: FontWeight.w500)),
            ),
            Divider(),
            Container(
              child: Column(
                children: subItems,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class CardSubItem extends StatelessWidget {
  CardSubItem({this.title, this.value});

  final String title;
  final String value;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListTile(
        title: Text(title,
            style: TextStyle(fontWeight: FontWeight.w500, fontSize: 12.0)),
        trailing: Text(value),
      ),
    );
  }
}
