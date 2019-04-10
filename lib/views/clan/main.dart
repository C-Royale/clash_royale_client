import 'package:flutter/material.dart';

class Clan extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('部落'),
      ),
      body: Center(
        child: Text('部落', style: TextStyle(fontSize: 24.0)),
      ),
    );
  }
}
