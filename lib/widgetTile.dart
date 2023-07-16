import 'package:flutter/material.dart';

class widgetTile extends StatelessWidget {
  widgetTile(
      {required this.colour, this.cardChild, required this.paddingValue});

  final Color colour;
  final cardChild;
  double paddingValue;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(paddingValue),
      child: Container(
        margin: EdgeInsets.all(15.0),
        decoration: BoxDecoration(
          color: colour,
          borderRadius: BorderRadius.circular(10),
        ),
        child: cardChild,
      ),
    );
  }
}
