// ignore_for_file: avoid_print, prefer_typing_uninitialized_variables

import 'dart:math';

import 'package:flutter/material.dart';

import '../../components/texts_style.dart';
import '../../components/my_colors.dart';
import '../../screens/01_result_screen.dart';

class CalculateButton extends StatelessWidget {
  final bool isMale;
  final double height;
  final int weight;
  final int age;
  const CalculateButton({
    Key? key,
    required this.isMale,
    required this.height,
    required this.weight,
    required this.age,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(8),
      height: 60,
      width: double.infinity,
      decoration: BoxDecoration(
        color: MyColors.deepPurple,
        borderRadius: BorderRadius.circular(20),
      ),
      child: MaterialButton(
        //BMI Mathematic Method
        onPressed: () {
          var result = weight / pow(height / 100, 2);
          print(result.round());
          Navigator.push(
            context,
            //Result Screen
            MaterialPageRoute(
              builder: (context) => BMIResultScreen(
                weight: weight,
                height: height,
                age: age,
                isMale: isMale,
                result: result.round(),
              ),
            ),
          );
        },
        //Button Text
        child: const Text(
          "CALCULATE",
          style: largeTextStyle,
        ),
      ),
    );
  }
}
