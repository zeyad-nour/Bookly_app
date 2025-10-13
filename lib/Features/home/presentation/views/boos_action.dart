import 'package:bokly_app/Features/home/presentation/views/customButton.dart';
import 'package:flutter/material.dart';

class BooksAction extends StatelessWidget {
  const BooksAction({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 27.0),
      child: Row(
        children: [
          Expanded(
            child: Custombutton(
              TextContint: "19.99",
              backgroundColor: Colors.white,
              TextColor: Colors.black,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(12),
                bottomLeft: Radius.circular(12),
              ),
            ),
          ),
          Expanded(
            child: Custombutton(
              TextContint: "Free Preview",
              backgroundColor: Color(0xffEF8262),
              TextColor: Colors.white,
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(17),
                bottomRight: Radius.circular(17),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
