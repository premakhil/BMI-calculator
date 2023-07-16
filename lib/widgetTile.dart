import 'package:flutter/material.dart';

class widgetTile extends StatelessWidget {
  widgetTile({required this.colour, this.cardChild});

  final Color colour;
  final cardChild;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(15.0),
      decoration: BoxDecoration(
        color: colour,
        borderRadius: BorderRadius.circular(10),

        // border: Border.all(
        //   width: 8,
        // ),
      ),
      child: cardChild,
    );
  }
}
