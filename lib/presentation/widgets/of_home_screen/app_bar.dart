// ignore_for_file: prefer_const_constructors_in_immutables, override_on_non_overriding_member, non_constant_identifier_names

import 'package:flutter/material.dart';

import '../../components/texts_style.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  final Color backgroundColor;

  const CustomAppBar({
    Key? key,
    required this.title,
    required this.backgroundColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      centerTitle: true,
      backgroundColor: backgroundColor,
      elevation: 1,
      title: Text(
        title,
        style: largeTextStyle,
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(60.0);
}
