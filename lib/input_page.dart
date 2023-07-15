import 'package:flutter/material.dart';
import 'widgetTile.dart';

const bottomHeight = 60.0;
const passiveColour = Color(0xFF25284A);
const activeColour = Color(0xFF1D1E33);

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
                  child: widgetTile(passiveColour),
                ),
                Expanded(
                  child: widgetTile(passiveColour),
                )
              ],
            ),
          ),

          // SizedBox(),

          Expanded(
            child: widgetTile(passiveColour),
          ),

          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: widgetTile(passiveColour),
                ),
                Expanded(
                  child: widgetTile(passiveColour),
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 10.0),
            color: Color(0xFFEB1555),
            width: double.infinity,
            height: bottomHeight,
            child: Center(
              child: Text(
                'Calculate BMI',
                style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 20.0,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
