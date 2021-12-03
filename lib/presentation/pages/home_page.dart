// ignore_for_file: prefer_const_constructors, avoid_print

import 'dart:math';
import 'package:bmi_calculator/presentation/components/constants.dart';
import 'package:bmi_calculator/presentation/pages/result_page.dart';
import 'package:flutter/material.dart';

class BMIHomeScreen extends StatefulWidget {
  const BMIHomeScreen({Key? key}) : super(key: key);

  @override
  State<BMIHomeScreen> createState() => _BMIHomeScreenState();
}

class _BMIHomeScreenState extends State<BMIHomeScreen> {
  bool isMale = false;
  double height = 140.0;
  int weight = 60;
  int age = 20;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: MyColors.deepPurple,
        title: Center(
          child: Text(
            "BMI Calculator",
            style: largeTextStyle,
          ),
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Row(
                children: [
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          isMale = true;
                        });
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          color: isMale ? MyColors.grey : MyColors.white,
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Column(
                          // ignore: prefer_const_literals_to_create_immutables
                          children: [
                            Icon(
                              Icons.male,
                              size: 150,
                              color: Colors.lightBlue,
                            ),
                            Text(
                              "MALE",
                              style: iconTextStyle,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          isMale = false;
                        });
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          color: isMale ? MyColors.white : MyColors.grey,
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Column(
                          // ignore: prefer_const_literals_to_create_immutables
                          children: [
                            Icon(
                              Icons.female,
                              size: 150,
                              color: Colors.pinkAccent,
                            ),
                            Text(
                              "FEMALE",
                              style: iconTextStyle,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 20,
              ),
              child: Container(
                decoration: BoxDecoration(
                  color: MyColors.grey,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "HEIGHT",
                      style: iconTextStyle,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.baseline,
                      textBaseline: TextBaseline.alphabetic,
                      children: [
                        Text(
                          '${height.round()}',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 60,
                          ),
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
                    Slider(
                      activeColor: MyColors.deepPurple,
                      inactiveColor: MyColors.grey,
                      value: height,
                      max: 210,
                      min: 70,
                      onChanged: (value) {
                        setState(() {
                          height = value;
                        });
                      },
                    ),
                  ],
                ),
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                        color: MyColors.grey,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "WEIGHT",
                            style: iconTextStyle,
                          ),
                          Text(
                            '${weight.round()}',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 60,
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              FloatingActionButton(
                                onPressed: () {
                                  setState(() {
                                    weight--;
                                  });
                                },
                                backgroundColor: MyColors.deepPurple,
                                heroTag: 'weight-',
                                elevation: 0,
                                child: Icon(
                                  Icons.remove,
                                  size: 30,
                                ),
                              ),
                              SizedBox(
                                width: 15,
                              ),
                              FloatingActionButton(
                                onPressed: () {
                                  setState(() {
                                    weight++;
                                  });
                                },
                                backgroundColor: MyColors.deepPurple,
                                heroTag: 'weight+',
                                elevation: 0,
                                child: Icon(
                                  Icons.add,
                                  size: 30,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(width: 20),
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                        color: MyColors.grey,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "AGE",
                            style: iconTextStyle,
                          ),
                          Text(
                            '${age.round()}',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 60,
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              FloatingActionButton(
                                onPressed: () {
                                  setState(() {
                                    age--;
                                  });
                                },
                                backgroundColor: MyColors.deepPurple,
                                heroTag: 'age-',
                                elevation: 0,
                                child: Icon(
                                  Icons.remove,
                                  size: 30,
                                ),
                              ),
                              SizedBox(
                                width: 15,
                              ),
                              FloatingActionButton(
                                onPressed: () {
                                  setState(() {
                                    age++;
                                  });
                                },
                                backgroundColor: MyColors.deepPurple,
                                heroTag: 'age+',
                                elevation: 0,
                                child: Icon(
                                  Icons.add,
                                  size: 30,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Container(
            height: 70,
            width: double.infinity,
            color: MyColors.deepPurple,
            child: MaterialButton(
              onPressed: () {
                var result = weight / pow(height / 100, 2);
                print(result.round());
                Navigator.push(
                  context,
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
              child: Text(
                "CALCULATE",
                style: largeTextStyle,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
