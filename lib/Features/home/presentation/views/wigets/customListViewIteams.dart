// ignore_for_file: file_names, non_constant_identifier_names

import 'package:flutter/material.dart';

class CustomListViweIteam extends StatelessWidget {
  const CustomListViweIteam({
    super.key,
    this.BorderReadis,
    required this.imageUrl,
  });
  final double? BorderReadis;
  final String imageUrl;
  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 2.7 / 4,
      child: Container(
        height: MediaQuery.of(context).size.width * 0.25,
        width: 100,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),

          image: DecorationImage(
            image: NetworkImage(imageUrl),
            fit: BoxFit.fill,
          ),
        ),
      ),
    );
  }
}
