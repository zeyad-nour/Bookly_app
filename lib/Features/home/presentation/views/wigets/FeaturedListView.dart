// ignore_for_file: file_names

import 'package:bokly_app/Features/home/presentation/manger/Featured_Cubit/featured_books_cubit.dart';
import 'package:bokly_app/Features/home/presentation/views/wigets/customListViewIteams.dart';
import 'package:bokly_app/core/utils/widget/custom_loding_Indecator.dart';
import 'package:bokly_app/core/utils/widget/customerror.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class FeaturedBooksList extends StatelessWidget {
  const FeaturedBooksList({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FeaturedBooksCubit, FeaturedBooksState>(
      builder: (context, state) {
        if (state is FeaturedBooksSuccess) {
          return SizedBox(
            height: MediaQuery.of(context).size.height * 0.3,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: state.books.length,
              itemBuilder: (c, index) {
                return Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: CustomListViweIteam(
                    imageUrl:
                        state.books[index].volumeInfo.imageLinks.thumbnail,
                  ),
                );
              },
            ),
          );
        } else if (state is FeaturedBooksFailure) {
          return Customerror(errorMessage: state.errorMessage);
        } else {
          return CustomLodingIndecator();
        }
      },
    );
  }
}
