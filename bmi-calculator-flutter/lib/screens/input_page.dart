import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:bmi_calculator/components/reusable_card.dart';
import 'package:bmi_calculator/constants.dart';
import 'package:bmi_calculator/components/icon_content.dart';
import 'package:bmi_calculator/screens/results_page.dart';
import 'package:bmi_calculator/components/bottom_button.dart';
import 'package:bmi_calculator/components/round_Icon_button.dart';
import 'calulative_brain.dart';

enum Gender {
  male,
  female,
}

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Gender selectGender;
  int height = 180;
  int weight = 40;
  int age = 14;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text('BMI CALCULATOR'),
        ),
        body: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Expanded(
                  child: Row(
                children: <Widget>[
                  Expanded(
                    child: ReusableCard(
                      onPressed: () {
                        setState(() {
                          selectGender = Gender.male;
                        });
                      },
                      colour: selectGender == Gender.male
                          ? kactiveBoxColors
                          : kinactiveBoxColors,
                      cardChild: ReusableIcon(
                        iconn: FontAwesomeIcons.mars,
                        label: 'MALE',
                      ),
                    ),
                  ),
                  Expanded(
                    child: ReusableCard(
                      onPressed: () {
                        setState(() {
                          selectGender = Gender.female;
                        });
                      },
                      colour: selectGender == Gender.female
                          ? kactiveBoxColors
                          : kinactiveBoxColors,
                      cardChild: ReusableIcon(
                        iconn: FontAwesomeIcons.venus,
                        label: 'FEMALE',
                      ),
                    ),
                  ),
                ],
              )),
              Expanded(
                child: ReusableCard(
                  colour: kactiveBoxColors,
                  cardChild: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        'HEIGHT',
                        style: kiconTextStyle,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.baseline,
                        textBaseline: TextBaseline.alphabetic,
                        children: <Widget>[
                          Text(
                            height.toString(),
                            style: knumberTextStyle,
                          ),
                          Text(
                            'cm',
                            style: kiconTextStyle,
                          ),
                        ],
                      ),
                      SliderTheme(
                        data: SliderTheme.of(context).copyWith(
                          activeTrackColor: Colors.white,
                          inactiveTrackColor: Color(0xFF808E98),
                          overlayColor: Color(0x29EB1555),
                          thumbColor: Color(0xFFEB1555),
                          thumbShape:
                              RoundSliderThumbShape(enabledThumbRadius: 15.0),
                          overlayShape:
                              RoundSliderOverlayShape(overlayRadius: 30.0),
                        ),
                        child: Slider(
                          value: height.toDouble(),
                          min: 110.0,
                          max: 220.0,
//                          activeColor: Color(0xFF808E98),
//                          inactiveColor: Color(0xFF808E98),
                          onChanged: (double newValue) {
                            setState(() {
                              height = newValue.round();
                            });
                          },
                        ),
                      )
                    ],
                  ),
                ),
              ),
              Expanded(
                  child: Row(
                children: <Widget>[
                  Expanded(
                    child: ReusableCard(
                        colour: kactiveBoxColors,
                        cardChild: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Text(
                              'WEIGHT',
                              style: kiconTextStyle,
                            ),
                            Text(
                              weight.toString(),
                              style: knumberTextStyle,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                RoundIconButton(
                                  icon: FontAwesomeIcons.minus,
                                  onpressed: () {
                                    setState(() {
                                      weight--;
                                    });
                                  },
                                ),
                                SizedBox(
                                  width: 3.0,
                                ),
                                RoundIconButton(
                                  icon: FontAwesomeIcons.plus,
                                  onpressed: () {
                                    setState(() {
                                      weight++;
                                    });
                                  },
                                ),
                              ],
                            )
                          ],
                        )),
                  ),
                  Expanded(
                    child: ReusableCard(
                        colour: kactiveBoxColors,
                        cardChild: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Text(
                              'AGE',
                              style: kiconTextStyle,
                            ),
                            Text(
                              age.toString(),
                              style: knumberTextStyle,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                RoundIconButton(
                                  icon: FontAwesomeIcons.minus,
                                  onpressed: () {
                                    setState(() {
                                      age--;
                                    });
                                  },
                                ),
                                SizedBox(
                                  width: 3.0,
                                ),
                                RoundIconButton(
                                  icon: FontAwesomeIcons.plus,
                                  onpressed: () {
                                    setState(() {
                                      age++;
                                    });
                                  },
                                ),
                              ],
                            )
                          ],
                        )),
                  ),
                ],
              )),
              BottomButton(
                buttonTitle: 'Calculate',
                onTap: () {
                  CalculatorBrain calc =
                      CalculatorBrain(height: height, weight: weight);
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ResultPage(
                        bmiResults: calc.calculateBMI(),
                        resultText: calc.getResults(),
                        interpretation: calc.getInterpretation(),
                      ),
                    ),
                  );
                },
              ),
            ]));
  }
}
