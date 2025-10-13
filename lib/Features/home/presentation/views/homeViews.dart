// ignore_for_file: file_names

import 'package:bokly_app/Features/home/presentation/views/wigets/home_view_body.dart';
import 'package:flutter/material.dart';

class Homeviews extends StatefulWidget {
  const Homeviews({super.key});

  @override
  State<Homeviews> createState() => _HomeviewsState();
}

class _HomeviewsState extends State<Homeviews> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: HomeViewBody());
  }
}
