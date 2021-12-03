// ignore_for_file: prefer_const_constructors, prefer_const_constructors_in_immutables, prefer_typing_uninitialized_variables, avoid_print, must_be_immutable

import 'package:bmi_calculator/presentation/components/constants.dart';
import 'package:flutter/material.dart';

class BMIResultScreen extends StatelessWidget {
  final int result;
  final bool isMale;
  final int age;
  final int weight;
  final double height;

  String getResult() {
    if (result < 18.5) {
      return 'You are underweight';
    } else if (result < 25) {
      return 'You body is fine';
    } else if (result < 30) {
      return 'You are overweight';
    } else {
      return 'You are obese';
    }
  }

  Color getColorResult() {
    if (result < 18.5) {
      return Colors.lightBlue;
    } else if (result < 25) {
      return Colors.green;
    } else if (result < 30) {
      return Colors.yellow;
    } else {
      return Colors.red;
    }
  }

  BMIResultScreen({
    Key? key,
    required this.result,
    required this.isMale,
    required this.age,
    required this.weight,
    required this.height,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: MyColors.deepPurple,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(
            Icons.arrow_back,
            color: MyColors.white,
            size: 35.0,
          ),
        ),
        title: Text(
          'BMI Result',
          style: largeTextStyle,
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
            child: Container(
              width: double.infinity,
              margin: EdgeInsets.all(10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: MyColors.grey,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    isMale ? 'Gender : Male' : 'Gender : Female',
                    style: resultTextStyle,
                  ),
                  space,
                  Icon(
                    isMale ? Icons.male : Icons.female,
                    size: 70,
                    color: isMale ? Colors.lightBlue : Colors.pinkAccent,
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: Container(
              width: double.infinity,
              margin: EdgeInsets.all(10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: MyColors.grey,
              ),
              child: Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.baseline,
                  textBaseline: TextBaseline.alphabetic,
                  children: [
                    Text(
                      'Height : ${height.round()}',
                      style: resultTextStyle,
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Text(
                      'CM',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Expanded(
            child: Container(
              width: double.infinity,
              margin: EdgeInsets.all(10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: MyColors.grey,
              ),
              child: Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.baseline,
                  textBaseline: TextBaseline.alphabetic,
                  children: [
                    Text(
                      'Weight : ${weight.round()}',
                      style: resultTextStyle,
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Text(
                      'KG',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Expanded(
            child: Container(
              width: double.infinity,
              margin: EdgeInsets.all(10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: MyColors.grey,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    'Age : $age',
                    style: resultTextStyle,
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: Container(
              width: double.infinity,
              margin: EdgeInsets.all(10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: getColorResult(),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    'Result : $result',
                    style: resultTextStyle,
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            flex: 4,
            child: Container(
              margin: EdgeInsets.all(10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: MyColors.white,
              ),
              child: Align(
                alignment: Alignment.bottomCenter,
                child: AspectRatio(
                  aspectRatio: 4 / 3,
                  child: Column(
                    children: [
                      Image.asset(
                        'assets/images/body_index.jpg',
                      ),
                      Text(
                        getResult(),
                        style: iconTextStyle,
                      ),
                    ],
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
