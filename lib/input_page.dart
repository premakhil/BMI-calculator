import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'widgetTile.dart';
import 'iconData.dart';
import 'RoundedButton.dart';

const bottomHeight = 60.0;
const passiveColour = Color(0xFF25284A);
const activeColour = Color(0xFF1D1E33);
const bottomColour = Color(0xFFEB1555);

enum Gender { male, female }

class InputPage extends StatefulWidget {
  const InputPage({Key? key}) : super(key: key);

  @override
  State<InputPage> createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Gender? selectedGender;

  int height = 180;
  int weight = 60;
  int age = 20;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(80.0),
        child: AppBar(
          // backgroundColor: Color(0xFF0A0E21),
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
        children: [
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: GestureDetector(
                    onTap: (() {
                      setState(() {
                        if (selectedGender != Gender.male) {
                          selectedGender = Gender.male;
                        } else {
                          selectedGender = null;
                        }
                      });
                    }),
                    child: widgetTile(
                        colour: selectedGender == Gender.male
                            ? activeColour
                            : passiveColour,
                        cardChild: iconData(FontAwesomeIcons.mars, 'MALE'),
                        paddingValue: selectedGender == Gender.male ? 5.0 : 0),
                  ),
                ),
                Expanded(
                  child: GestureDetector(
                    onTap: (() {
                      setState(() {
                        if (selectedGender != Gender.female) {
                          selectedGender = Gender.female;
                        } else {
                          selectedGender = null;
                        }
                      });
                    }),
                    child: widgetTile(
                        colour: selectedGender == Gender.female
                            ? activeColour
                            : passiveColour,
                        cardChild: iconData(
                          FontAwesomeIcons.venus,
                          'FEMALE',
                        ),
                        paddingValue:
                            selectedGender == Gender.female ? 5.0 : 0),
                  ),
                )
              ],
            ),
          ),
          Expanded(
            child: widgetTile(
              colour: passiveColour,
              paddingValue: 0,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'HEIGHT',
                    style: TextStyle(
                        color: Color(0xFF6F6D82),
                        fontSize: 15.0,
                        fontWeight: FontWeight.w600),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    textBaseline: TextBaseline.alphabetic,
                    children: [
                      Text(
                        height.toString(),
                        style: TextStyle(
                            fontSize: 55.0, fontWeight: FontWeight.w900),
                      ),
                      Text('cm',
                          style: TextStyle(
                            fontWeight: FontWeight.w800,
                          ))
                    ],
                  ),
                  Slider(
                    value: height.toDouble(),
                    min: 120.0,
                    max: 220.0,
                    activeColor: bottomColour,
                    inactiveColor: Colors.grey[700],
                    onChanged: (double newValue) {
                      setState(() {
                        height = newValue.round();
                      });
                    },
                  )
                ],
              ),
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: widgetTile(
                      colour: passiveColour,
                      paddingValue: 0,
                      cardChild: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'WEIGHT',
                            style: TextStyle(
                                color: Color(0xFF6F6D82),
                                fontSize: 15.0,
                                fontWeight: FontWeight.w600),
                          ),
                          Text(
                            weight.toString(),
                            style: TextStyle(
                                fontSize: 55.0, fontWeight: FontWeight.w900),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              RoundedButton(
                                icon: FontAwesomeIcons.plus,
                                onPressed: () {
                                  setState(() {
                                    weight++;
                                  });
                                },
                              ),
                              SizedBox(
                                width: 10.0,
                              ),
                              RoundedButton(
                                icon: FontAwesomeIcons.minus,
                                onPressed: () {
                                  setState(() {
                                    weight--;
                                  });
                                },
                              )
                            ],
                          )
                          // RoundedButton(),
                        ],
                      )),
                ),
                Expanded(
                  child: widgetTile(
                    colour: passiveColour,
                    paddingValue: 0,
                    cardChild: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'AGE',
                          style: TextStyle(
                              color: Color(0xFF6F6D82),
                              fontSize: 15.0,
                              fontWeight: FontWeight.w600),
                        ),
                        Text(
                          age.toString(),
                          style: TextStyle(
                              fontSize: 55.0, fontWeight: FontWeight.w900),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            RoundedButton(
                              icon: FontAwesomeIcons.plus,
                              onPressed: () {
                                setState(() {
                                  if (age < 100) {
                                    age++;
                                  }
                                });
                              },
                            ),
                            SizedBox(
                              width: 10.0,
                            ),
                            RoundedButton(
                                icon: FontAwesomeIcons.minus,
                                onPressed: () {
                                  setState(() {
                                    if (age > 5) {
                                      age--;
                                    }
                                  });
                                })
                          ],
                        )
                        // RoundedButton(),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.pushNamed(context, '/resultPage');
            },
            child: Container(
              margin: EdgeInsets.only(top: 10.0),
              color: bottomColour,
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
          ),
        ],
      ),
    );
  }
}
