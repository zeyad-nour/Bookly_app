// ignore_for_file: file_names

import 'package:bokly_app/Features/search/presentation/views/search_view.dart';
import 'package:bokly_app/constant.dart';
import 'package:bokly_app/core/utils/assets.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';

class CustomAppbar extends StatelessWidget {
  const CustomAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 24, right: 24, bottom: 20),
      child: Row(
        children: [
          Image.asset(AssetsData.Logo, height: 19.8),
          Spacer(),
          IconButton(
            onPressed: () {
              Get.to(
                () => SearchView(),
                transition: Transition.upToDown,
                duration: KTransitionDurition,
              );
            },
            icon: Icon(FontAwesomeIcons.magnifyingGlass, size: 24),
          ),
        ],
      ),
    );
  }
}
