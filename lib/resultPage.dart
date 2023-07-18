import 'package:flutter/material.dart';

class resultPage extends StatelessWidget {
  // resultPage({required this.remark, required this.result, required this.score});

  // final String remark;
  // final double score;
  // final String result;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(80.0),
        child: AppBar(
          title: Padding(
            padding: const EdgeInsets.only(top: 20.0),
            child: Text(
              'Healthier',
            ),
          ),
          centerTitle: true,
        ),
      ),
      body: Column(
        // mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
            flex: 1,
            child: Center(
              child: Container(
                margin: EdgeInsets.fromLTRB(0, 15.0, 0, 0),
                child: Text(
                  'Your Score',
                  style: TextStyle(fontSize: 50.0, fontWeight: FontWeight.w700),
                ),
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: Container(
              margin: EdgeInsets.only(top: 15.0),
              width: 350.0,
              decoration: BoxDecoration(
                color: Color(0xFF25284A),
                borderRadius: BorderRadius.circular(20.0),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    'OVERWEIGHT',
                    style:
                        TextStyle(fontSize: 20.0, fontWeight: FontWeight.w500),
                  ),
                  Text('25',
                      style: TextStyle(
                          fontSize: 120.0, fontWeight: FontWeight.w500)),
                  Text("Work out more",
                      style: TextStyle(
                          fontSize: 20.0, fontWeight: FontWeight.w300))
                ],
              ),
            ),
          ),
          Expanded(
            flex: 0,
            child: GestureDetector(
              onTap: () {
                Navigator.pop(context);
              },
              child: Container(
                margin: EdgeInsets.only(top: 50.0),
                color: Color(0xFFEB1555),
                width: double.infinity,
                height: 60.0,
                child: Center(
                  child: Text(
                    'Re-Calculate',
                    style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 20.0,
                    ),
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
