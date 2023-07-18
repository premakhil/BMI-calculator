import 'package:flutter/material.dart';
import 'input_page.dart';
import 'resultPage.dart';

void main() {
  return runApp(BMICalculator());
}

class BMICalculator extends StatelessWidget {
  const BMICalculator({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        primaryColor: Color(0xFF0A0E21),
        scaffoldBackgroundColor: Color(0xFF0A0E21),
        appBarTheme: AppBarTheme(
          color: Color(0xFF0A0E21),
        ),
      ),
      title: 'Healthier',
      initialRoute: '/inputPage',
      routes: {
        '/inputPage': (context) => InputPage(),
        '/resultPage': (context) => resultPage(),
      },
    );
  }
}
