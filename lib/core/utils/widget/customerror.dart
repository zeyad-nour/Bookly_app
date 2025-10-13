import 'package:bokly_app/core/utils/styles.dart';
import 'package:flutter/material.dart';

class Customerror extends StatelessWidget {
  const Customerror({super.key, required this.errorMessage});
  final String errorMessage;

  @override
  Widget build(BuildContext context) {
    return Text(errorMessage, style: Style.TextStyle18);
  }
}
