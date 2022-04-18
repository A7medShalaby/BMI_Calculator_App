import 'package:flutter/material.dart';

import '../../components/texts_style.dart';
import '../../components/my_colors.dart';

class WeightResult extends StatefulWidget {
  final int weight;
  const WeightResult({
    Key? key,
    required this.weight,
  }) : super(key: key);

  @override
  State<WeightResult> createState() => _WeightResultState();
}

class _WeightResultState extends State<WeightResult> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        width: double.infinity,
        margin: const EdgeInsets.all(10),
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
                'Weight : ${widget.weight.round()}',
                style: resultTextStyle,
              ),
              const SizedBox(
                width: 5,
              ),
              const Text(
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
    );
  }
}
