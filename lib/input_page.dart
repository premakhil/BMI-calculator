import 'package:flutter/material.dart';
import 'widgetTile.dart';

class InputPage extends StatefulWidget {
  const InputPage({Key? key}) : super(key: key);

  @override
  State<InputPage> createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(80.0),
        child: AppBar(
          backgroundColor: Color(0xFF0A0E21),
          title: Padding(
            padding: const EdgeInsets.only(top: 20.0),
            child: Text(
              'Healthier!',
            ),
          ),
          centerTitle: true,
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: widgetTile(Color(0xFF25284A)),
                ),
                Expanded(
                  child: widgetTile(Color(0xFF25284A)),
                )
              ],
            ),
          ),

          // SizedBox(),

          Expanded(
            child: widgetTile(Color(0xFF25284A)),
          ),

          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: widgetTile(Color(0xFF25284A)),
                ),
                Expanded(
                  child: widgetTile(Color(0xFF25284A)),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
