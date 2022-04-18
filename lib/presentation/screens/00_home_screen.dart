// ignore_for_file: file_names, prefer_const_constructors

import 'package:flutter/material.dart';

import '../components/my_colors.dart';
import '../widgets/of_home_screen/app_bar.dart';
import '../widgets/of_home_screen/calculate_button.dart';
import '../widgets/of_home_screen/gender_selector.dart';
import '../widgets/of_home_screen/height_slider.dart';
import '../widgets/of_home_screen/weight_selector.dart';

class BMIHomeScreen extends StatefulWidget {
  const BMIHomeScreen({Key? key}) : super(key: key);

  @override
  State<BMIHomeScreen> createState() => _BMIHomeScreenState();
}

class _BMIHomeScreenState extends State<BMIHomeScreen> {
  //TODO: الجندر بتتباص فى سكرينة النتيجة الحمد لله
  bool isMale = false;
  //TODO: باقي المتغيرات بتتباصى بنفس القيم دي + أنا عاوز أباصيها بالمتغيرات اللي هعملها فى الاسكرين
  double height = 140.0; //Initial Value
  int weight = 60; //Initial Value
  int age = 20; //Initial Value

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //AppBar
      appBar: const CustomAppBar(
        backgroundColor: MyColors.deepPurple,
        title: "BMI Calculator",
      ),
      //Full Body
      body: Column(
        children: [
          //Gender Selector
          Container(
            padding: const EdgeInsets.all(20),
            child: Row(
              children: [
                //Male Selector Container
                GenderSelector(
                    title: 'MALE',
                    icon: Icons.male,
                    iconColor: Colors.lightBlue,
                    widgetColor: isMale ? MyColors.grey : MyColors.white,
                    genderSelectorFunction: () {
                      setState(() {
                        isMale = true;
                      });
                    }),
                //Space Between Two GenderSelector
                const SizedBox(width: 20),
                //Female Selector Container
                GenderSelector(
                  title: 'FEMALE',
                  icon: Icons.female,
                  iconColor: Colors.pinkAccent,
                  widgetColor: isMale ? MyColors.white : MyColors.grey,
                  genderSelectorFunction: () {
                    setState(() {
                      isMale = false;
                    });
                  },
                ),
              ],
            ),
          ),
          //Height Slider Container
          HeightSlider(height: height),
          //Weight & Age Selector
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Row(
                children: [
                  //Weight Selector
                  WeightAndAgeSelector(
                    title: 'WEIGHT',
                    variableNumber: weight,
                    heroTag: 'weight',
                  ),
                  //Space Between Height & Age Selectors
                  const SizedBox(width: 20),
                  //Age Selector
                  WeightAndAgeSelector(
                    title: 'AGE',
                    variableNumber: age,
                    heroTag: 'age',
                  ),
                ],
              ),
            ),
          ),
          //Calculate Button
          CalculateButton(
            age: age,
            height: height,
            isMale: isMale,
            weight: weight,
          ),
        ],
      ),
    );
  }
}
