// ignore_for_file: non_constant_identifier_names

import 'package:bokly_app/Features/home/presentation/views/book_details_view_Body.dart';
import 'package:flutter/material.dart';

class BookDetailsView extends StatelessWidget {
  final String ImageUrl;
  final String title;
  final String publishedDate;
  const BookDetailsView({
    super.key,
    required this.ImageUrl,
    required this.title,
    required this.publishedDate,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: BookDetailsViewBody(
          imageUrl: ImageUrl,
          title: title,
          publishedDate: publishedDate,
        ),
      ),
    );
  }
}
