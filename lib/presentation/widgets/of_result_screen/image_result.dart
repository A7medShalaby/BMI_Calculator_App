// ignore_for_file: sized_box_for_whitespace

import 'package:flutter/material.dart';

import '../../components/texts_style.dart';
import '../../components/my_colors.dart';

class ImageResult extends StatefulWidget {
  final int result;
  const ImageResult({
    Key? key,
    required this.result,
  }) : super(key: key);

  @override
  State<ImageResult> createState() => _ImageResultState();
}

class _ImageResultState extends State<ImageResult> {
  //Variable NumberResult Method
  String _getResult() {
    if (widget.result < 25) {
      return 'You are normal';
    } else if (widget.result < 30) {
      return 'You are over weight';
    } else if (widget.result < 40) {
      return 'You are obese';
    } else {
      return 'You are morbidly obese';
    }
  }

  //Variable ImageResult Method
  Image _getColorImage() {
    if (widget.result < 25) {
      return Image.asset('assets/images/body_index1.jpg');
    } else if (widget.result < 30) {
      return Image.asset('assets/images/body_index2.jpg');
    } else if (widget.result < 40) {
      return Image.asset('assets/images/body_index3.jpg');
    } else {
      return Image.asset('assets/images/body_index4.jpg');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 4,
      child: Container(
        margin: const EdgeInsets.all(10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: MyColors.white,
        ),
        child: Align(
          alignment: Alignment.topCenter,
          child: AspectRatio(
            aspectRatio: 4 / 3,
            child: Column(
              children: [
                Container(
                  height: 270,
                  child: _getColorImage(),
                ),
                Text(
                  _getResult(),
                  style: iconTextStyle,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
