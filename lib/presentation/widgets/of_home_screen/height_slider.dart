// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';

import '../../components/texts_style.dart';
import '../../components/my_colors.dart';

class HeightSlider extends StatefulWidget {
  double height = 140;
  HeightSlider({Key? key, required this.height}) : super(key: key);

  @override
  State<HeightSlider> createState() => _HeightSliderState();
}

class _HeightSliderState extends State<HeightSlider> {
  //Initial Value
  @override
  Widget build(BuildContext context) {
    return Expanded(
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
              const Text(
                "HEIGHT",
                style: iconTextStyle,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.baseline,
                textBaseline: TextBaseline.alphabetic,
                children: [
                  Text(
                    '${widget.height.round()}',
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 50,
                    ),
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  const Text(
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
                value: widget.height,
                max: 210,
                min: 70,
                onChanged: (value) {
                  setState(() {
                    widget.height = value;
                  });
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
