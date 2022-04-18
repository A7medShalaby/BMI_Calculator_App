// ignore_for_file: must_be_immutable, sized_box_for_whitespace

import 'package:flutter/material.dart';

import '../../components/texts_style.dart';
import '../../components/my_colors.dart';

class WeightAndAgeSelector extends StatefulWidget {
  final String title;
  late int variableNumber;
  final String heroTag;

  WeightAndAgeSelector({
    Key? key,
    required this.title,
    required this.variableNumber,
    required this.heroTag,
  }) : super(key: key);

  @override
  State<WeightAndAgeSelector> createState() => _WeightAndAgeSelectorState();
}

class _WeightAndAgeSelectorState extends State<WeightAndAgeSelector> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        decoration: BoxDecoration(
          color: MyColors.grey,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            //Widget Text
            Text(
              widget.title,
              style: iconTextStyle,
            ),
            //Widget Variable Number
            Text(
              '${widget.variableNumber.round()}',
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 50,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                //Decrease Button
                Container(
                  height: 50,
                  width: 50,
                  child: InkWell(
                    onLongPress: () {
                      setState(() {
                        widget.variableNumber--;
                      });
                    },
                    child: FloatingActionButton(
                      onPressed: () {
                        setState(() {
                          widget.variableNumber--;
                        });
                      },
                      backgroundColor: MyColors.deepPurple,
                      heroTag: '${widget.heroTag}-',
                      elevation: 0,
                      //Minus Icon
                      child: const Icon(
                        Icons.remove,
                        size: 30,
                      ),
                    ),
                  ),
                ),
                const SizedBox(width: 20),
                //Increase Button
                Container(
                  height: 50,
                  width: 50,
                  child: InkWell(
                    onLongPress: () {
                      setState(() {
                        widget.variableNumber++;
                      });
                    },
                    child: FloatingActionButton(
                      onPressed: () {
                        setState(() {
                          widget.variableNumber++;
                        });
                      },
                      backgroundColor: MyColors.deepPurple,
                      heroTag: '${widget.heroTag}+',
                      elevation: 0,
                      //Plus Icon
                      child: const Icon(
                        Icons.add,
                        size: 30,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
