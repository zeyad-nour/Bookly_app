// ignore_for_file: file_names, non_constant_identifier_names

import 'package:bokly_app/core/utils/styles.dart';
import 'package:flutter/material.dart';

class Custombutton extends StatelessWidget {
  const Custombutton({
    super.key,
    required this.backgroundColor,
    required this.TextColor,
    this.borderRadius,
    required this.TextContint,
  });
  final String TextContint;
  final Color backgroundColor;
  final Color TextColor;
  final BorderRadius? borderRadius;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 49,
      child: TextButton(
        onPressed: () {},
        style: TextButton.styleFrom(
          backgroundColor: backgroundColor,
          shape: RoundedRectangleBorder(
            borderRadius: borderRadius ?? BorderRadiusGeometry.circular(20),
          ),
          shadowColor: Colors.white,
          elevation: 4,
        ),
        child: Text(
          TextContint,
          style: Style.TextStyle16.copyWith(
            color: TextColor,
            fontWeight: FontWeight.w900,
            fontSize: 19,
          ),
        ),
      ),
    );
  }
}
