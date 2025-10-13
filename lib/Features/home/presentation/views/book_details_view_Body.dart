// ignore_for_file: file_names

import 'package:bokly_app/Features/home/presentation/manger/suggestion_cubit/suggestion_cubit_cubit.dart';
import 'package:bokly_app/Features/home/presentation/views/boos_action.dart';
import 'package:bokly_app/Features/home/presentation/views/wigets/customListViewIteams.dart';
import 'package:bokly_app/Features/home/presentation/views/wigets/custom_Raiting.dart';
import 'package:bokly_app/Features/home/presentation/views/wigets/custom_appbar_book_detils.dart';
import 'package:bokly_app/core/utils/styles.dart';
import 'package:bokly_app/core/utils/widget/custom_loding_Indecator.dart';
import 'package:bokly_app/core/utils/widget/customerror.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BookDetailsViewBody extends StatelessWidget {
  final String imageUrl;
  final String title;
  final String publishedDate;

  const BookDetailsViewBody({
    super.key,
    required this.imageUrl,
    required this.title,
    required this.publishedDate,
  });

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return CustomScrollView(
      slivers: [
        SliverFillRemaining(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30.0),
            child: Column(
              children: [
                SizedBox(height: 20),
                CustomAppbarBookDetils(),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: width * 0.22),
                  child: CustomListViweIteam(imageUrl: imageUrl),
                ),
                const SizedBox(height: 27),
                Text(
                  title,
                  overflow: TextOverflow.ellipsis,
                  style: Style.TextStyle30.copyWith(
                    fontFamily: "PlayfairDisplay",
                  ),
                ),
                const SizedBox(height: 4),
                Opacity(
                  opacity: 0.7,
                  child: Text(
                    publishedDate,

                    overflow: TextOverflow.ellipsis,
                    style: Style.TextStyle18,
                  ),
                ),
                const SizedBox(height: 19),
                Expanded(child: BookRaiting()),
                const SizedBox(height: 30),
                Expanded(child: BooksAction()),
                Expanded(child: const SizedBox(height: 50)),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "     You can also like",
                    style: Style.TextStyle14.copyWith(
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                const SizedBox(height: 16),
                SimilarBooksListview(),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

class SimilarBooksListview extends StatelessWidget {
  const SimilarBooksListview({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SuggestionCubitCubit, SuggestionCubitState>(
      builder: (context, state) {
        if (state is SuggestionSuccess) {
          return SizedBox(
            height: MediaQuery.of(context).size.height * 0.12,
            child: ListView.builder(
              itemCount: 10,
              scrollDirection: Axis.horizontal,
              itemBuilder: (c, index) {
                return Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: CustomListViweIteam(
                    imageUrl: state
                        .suggestionbook[index]
                        .volumeInfo
                        .imageLinks
                        .thumbnail,
                  ),
                );
              },
            ),
          );
        } else if (state is SuggestionFailure) {
          return Customerror(errorMessage: state.errorMessage);
        } else {
          return CustomLodingIndecator();
        }
      },
    );
  }
}
