import 'package:flutter/material.dart';
import 'package:transparent_image/transparent_image.dart';

List<Widget> buildDeckItem(List<dynamic> cards) {
  return cards.map((card) {
    return Container(
      margin: EdgeInsets.all(1.0),
      decoration: BoxDecoration(border: Border.all(color: Colors.grey)),
      child: FadeInImage.memoryNetwork(
          image: card.icon, fit: BoxFit.fill, placeholder: kTransparentImage),
    );
  }).toList();
}
