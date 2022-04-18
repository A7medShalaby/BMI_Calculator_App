// ignore_for_file: prefer_const_constructors, prefer_const_constructors_in_immutables, prefer_typing_uninitialized_variables, avoid_print, must_be_immutable, file_names

import 'package:bmi_calculator/presentation/components/texts_style.dart';
import 'package:flutter/material.dart';

import '../components/my_colors.dart';
import '../widgets/of_result_screen/age_result.dart';
import '../widgets/of_result_screen/final_result.dart';
import '../widgets/of_result_screen/gender_result.dart';
import '../widgets/of_result_screen/height_result.dart';
import '../widgets/of_result_screen/image_result.dart';
import '../widgets/of_result_screen/weight_result.dart';

class BMIResultScreen extends StatelessWidget {
  final int result;
  final bool isMale;
  final int age;
  final int weight;
  final double height;

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
        centerTitle: true,
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
          //Gender Result Text
          GenderResult(isMale: isMale),
          //Height Result Text
          HeightResult(height: height),
          //Weight Result Text
          WeightResult(weight: weight),
          //Age Result Text
          AgeResult(age: age),
          //Final Result Text
          FinalResult(result: result),
          //Final Result Image
          ImageResult(result: result),
        ],
      ),
    );
  }
}
