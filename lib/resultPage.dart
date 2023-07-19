import 'package:flutter/material.dart';
import 'input_page.dart';

class resultPage extends StatelessWidget {
  resultPage({
    required this.remark,
    required this.category,
    required this.bmi,
    required this.selectedGender,
    required this.onGenderChanged,
  });

  final String remark;
  final String bmi;
  final String category;
  final Gender? selectedGender;
  final Function(Gender?) onGenderChanged;

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
              margin: EdgeInsets.only(top: 50.0),
              width: 320.0,
              decoration: BoxDecoration(
                color: Color(0xFF25284A),
                borderRadius: BorderRadius.circular(20.0),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    category,
                    style: TextStyle(
                        fontSize: 20.0,
                        fontWeight: FontWeight.w500,
                        color: category == 'OVERWEIGHT'
                            ? Colors.red
                            : category == 'UNDERWEIGHT'
                                ? Colors.grey
                                : Colors.green),
                  ),
                  Text(bmi,
                      style: TextStyle(
                        fontSize: 90.0,
                        fontWeight: FontWeight.w500,
                      )),
                  Text(remark,
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
                onGenderChanged(null);
                Navigator.pop(context);
              },
              child: Container(
                margin: EdgeInsets.only(top: 100.0),
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
