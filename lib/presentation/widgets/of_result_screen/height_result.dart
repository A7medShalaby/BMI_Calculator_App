import 'package:flutter/material.dart';

import '../../components/texts_style.dart';
import '../../components/my_colors.dart';

class HeightResult extends StatefulWidget {
  final double height;
  const HeightResult({Key? key, required this.height}) : super(key: key);

  @override
  State<HeightResult> createState() => _HeightResultState();
}

class _HeightResultState extends State<HeightResult> {
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
                'Height : ${widget.height.round()}',
                style: resultTextStyle,
              ),
              const SizedBox(width: 5),
              const Text(
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
    );
  }
}
