import 'package:flutter/material.dart';

import '../../components/texts_style.dart';

class GenderSelector extends StatefulWidget {
  final String title;
  final IconData icon;
  final Color iconColor;
  final Color widgetColor;
  final VoidCallback genderSelectorFunction;
  const GenderSelector({
    Key? key,
    required this.title,
    required this.icon,
    required this.iconColor,
    required this.widgetColor,
    required this.genderSelectorFunction,
  }) : super(key: key);

  @override
  State<GenderSelector> createState() => _GenderSelectorState();
}

class _GenderSelectorState extends State<GenderSelector> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GestureDetector(
        onTap: widget.genderSelectorFunction,
        child: Container(
          padding: const EdgeInsets.all(10),
          decoration: BoxDecoration(
            color: widget.widgetColor,
            borderRadius: BorderRadius.circular(20),
          ),
          child: Column(
            children: [
              //Widget Icon
              Icon(
                widget.icon,
                size: 140,
                color: widget.iconColor,
              ),
              //Widget Title
              Text(
                widget.title,
                style: iconTextStyle,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
