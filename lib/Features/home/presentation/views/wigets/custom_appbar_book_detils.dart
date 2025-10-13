import 'package:flutter/material.dart';

class CustomAppbarBookDetils extends StatelessWidget {
  const CustomAppbarBookDetils({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Row(
        children: [
          IconButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            icon: Icon(Icons.close, size: 30),
          ),
          Spacer(),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.shopping_cart, size: 25),
          ),
        ],
      ),
    );
  }
}
