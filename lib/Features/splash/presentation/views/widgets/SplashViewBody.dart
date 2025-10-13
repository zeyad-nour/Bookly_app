// ignore_for_file: unused_import, file_names

import 'package:bokly_app/Features/home/presentation/views/homeViews.dart';
import 'package:bokly_app/Features/splash/presentation/views/widgets/SlidingText.dart';

import 'package:bokly_app/constant.dart';
import 'package:bokly_app/core/utils/assets.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Splashviewbody extends StatefulWidget {
  const Splashviewbody({super.key});

  @override
  State<Splashviewbody> createState() => _SplashviewbodyState();
}

class _SplashviewbodyState extends State<Splashviewbody>
    with SingleTickerProviderStateMixin {
  late AnimationController animationController;
  late Animation<Offset> slidingAnimation;

  @override
  void initState() {
    initSlidingAnimation();
    NavigtToHome();
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
    animationController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Image.asset(AssetsData.Logo),
          const SizedBox(height: 7),
          SlidingText(slidingAnimation: slidingAnimation),
        ],
      ),
    );
  }

  void initSlidingAnimation() {
    animationController = AnimationController(
      vsync: this,
      duration: Duration(seconds: 2),
    );
    slidingAnimation = Tween<Offset>(
      begin: const Offset(0, 4),
      end: const Offset(0, 0),
    ).animate(animationController);

    animationController.forward();
  }

  // ignore: non_constant_identifier_names
  void NavigtToHome() {
    Future.delayed(Duration(seconds: 3), () {
      Get.to(
        () => Homeviews(),
        transition: Transition.downToUp,
        duration: KTransitionDurition,
      );
    });
  }
}
