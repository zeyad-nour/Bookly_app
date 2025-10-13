// ignore_for_file: file_names

import 'package:flutter/material.dart';

class SlidingText extends StatelessWidget {
  const SlidingText({super.key, required this.slidingAnimation});

  final Animation<Offset> slidingAnimation;

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: slidingAnimation,

      builder: (c, _) {
        return SlideTransition(
          position: slidingAnimation,
          child: const Text("Read Free Books", textAlign: TextAlign.center),
        );
      },
    );
  }
}
