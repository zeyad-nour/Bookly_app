// ignore_for_file: file_names

import 'package:bokly_app/Features/search/presentation/views/widgets/customSearch_text_field.dart';
import 'package:bokly_app/Features/search/presentation/views/widgets/custom_search_result.dart';
import 'package:bokly_app/core/utils/styles.dart';
import 'package:flutter/material.dart';

class SearchViewBody extends StatelessWidget {
  const SearchViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30.0),
      child: Column(
        children: [
          CustomSearchTextField(),
          SizedBox(height: 50),
          Align(
            alignment: AlignmentGeometry.centerLeft,
            child: Text("Search Result", style: Style.TextStyle18),
          ),
          SizedBox(height: 10),
          Expanded(child: SearchResultListview()),
        ],
      ),
    );
  }
}
