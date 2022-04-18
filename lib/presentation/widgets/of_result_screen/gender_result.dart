import 'package:flutter/material.dart';

import '../../components/texts_style.dart';
import '../../components/my_colors.dart';

class GenderResult extends StatefulWidget {
  final bool isMale;
  const GenderResult({
    Key? key,
    required this.isMale,
  }) : super(key: key);

  @override
  State<GenderResult> createState() => _GenderResultState();
}

class _GenderResultState extends State<GenderResult> {
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
            //Result Text
            Text(
              widget.isMale ? 'Gender : Male' : 'Gender : Female',
              style: resultTextStyle,
            ),
            space,
            //result Icon
            Icon(
              widget.isMale ? Icons.male : Icons.female,
              size: 70,
              color: widget.isMale ? Colors.lightBlue : Colors.pinkAccent,
            ),
          ],
        ),
      ),
    );
  }
}
