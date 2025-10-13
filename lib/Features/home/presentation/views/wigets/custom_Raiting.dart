// ignore_for_file: file_names

import 'package:bokly_app/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class BookRaiting extends StatelessWidget {
  const BookRaiting({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(FontAwesomeIcons.solidStar, color: Color(0xffFFDD4F)),
        SizedBox(width: 10),
        Text("4.8", style: Style.TextStyle14),
        Text("(254)", style: Style.TextStyle14),
      ],
    );
  }
}
