import 'package:flutter/material.dart';

import '../../components/texts_style.dart';
import '../../components/my_colors.dart';

class AgeResult extends StatefulWidget {
  final int age;
  const AgeResult({
    Key? key,
    required this.age,
  }) : super(key: key);

  @override
  State<AgeResult> createState() => _AgeResultState();
}

class _AgeResultState extends State<AgeResult> {
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
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              'Age : ${widget.age}',
              style: resultTextStyle,
            ),
          ],
        ),
      ),
    );
  }
}
