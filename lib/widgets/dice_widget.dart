import 'package:dicee/styles/button_style.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'dart:math';

typedef void StateCallback(String name, int newNum);

class DiceWidget extends StatelessWidget {
  final String diceName;
  final int diceNum;
  final StateCallback stateCallback;
  final ButtonStyle style;
  final String text;
  static int rng;

  const DiceWidget({
    Key key,
    @required this.diceName,
    @required this.diceNum,
    @required this.stateCallback,
    this.style,
    this.text,
  }) : super(
          key: key,
        );

  // factory DiceWidget.custom({
  //   Key key,
  //   Widget child,
  //   VoidCallback onPressed,
  // }) =>
  //     DiceWidget(
  //       key: key,
  //       onPressed: onPressed,
  //       style: StylesGuide.defaultStyle,
  //     );

  @override
  Widget build(BuildContext context) {
    int randomNum;

    return TextButton(
      onPressed: () => {
        randomNum = Random().nextInt(6) + 1,
        stateCallback(diceName, randomNum)
        },
      style: StylesGuide.defaultStyle,
      child: Image.asset('images/dice$diceNum.png'),
    );
  }
}
