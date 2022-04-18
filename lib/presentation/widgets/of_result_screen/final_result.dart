import 'package:flutter/material.dart';

import '../../components/texts_style.dart';

class FinalResult extends StatefulWidget {
  final int result;
  const FinalResult({Key? key, required this.result}) : super(key: key);

  @override
  State<FinalResult> createState() => _FinalResultState();
}

class _FinalResultState extends State<FinalResult> {
  //Variable ColorResult Method
  Color _getColorResult() {
    if (widget.result < 24) {
      return Colors.lightBlue;
    } else if (widget.result < 30) {
      return Colors.green;
    } else if (widget.result < 40) {
      return Colors.yellow;
    } else {
      return Colors.red;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        width: double.infinity,
        margin: const EdgeInsets.all(10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: _getColorResult(),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              'Result : ${widget.result}',
              style: resultTextStyle,
            ),
          ],
        ),
      ),
    );
  }
}
