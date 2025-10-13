import 'package:bokly_app/Features/home/presentation/manger/BestSeller_cubit/best_seller_cubit.dart';
import 'package:bokly_app/Features/home/presentation/views/book_details_view.dart';
import 'package:bokly_app/Features/home/presentation/views/wigets/customListViewIteams.dart';
import 'package:bokly_app/Features/home/presentation/views/wigets/custom_Raiting.dart';
import 'package:bokly_app/core/utils/styles.dart';
import 'package:bokly_app/core/utils/widget/custom_loding_Indecator.dart';
import 'package:bokly_app/core/utils/widget/customerror.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart' hide Transition;
import 'package:get/get.dart';

class BestSellerListViewIteams extends StatelessWidget {
  const BestSellerListViewIteams({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<BestSellerCubit, BestSellerState>(
      builder: (context, state) {
        if (state is BestSellerSuccess) {
          return SizedBox(
            height: MediaQuery.of(context).size.height * 0.5,
            child: ListView.builder(
              itemCount: state.bestSeller.length,
              itemBuilder: (context, index) => GestureDetector(
                onTap: () {
                  Get.to(
                    BookDetailsView(
                      ImageUrl:
                          state.bestSeller[index].volumeInfo.imageLinks.thumbnail,
                      title: '${state.bestSeller[index].volumeInfo.title}',
                      publishedDate:
                          "${state.bestSeller[index].volumeInfo.publishedDate}",
                    ),
                    transition: Transition.rightToLeftWithFade,
                  );
                },

                child: Padding(
                  padding: const EdgeInsets.only(left: 22.0),
                  child: SizedBox(
                    height: 130,

                    child: Row(
                      children: [
                        CustomListViweIteam(
                          imageUrl: state
                              .bestSeller[index]
                              .volumeInfo
                              .imageLinks
                              .thumbnail,
                        ),
                        SizedBox(width: 30),
                        Column(
                          children: [
                            SizedBox(
                              width: MediaQuery.of(context).size.width * 0.6,
                              child: Text(
                                "${state.bestSeller[index].volumeInfo.title}",
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                                style: Style.TextStyle20.copyWith(
                                  fontFamily: "PlayfairDisplay",
                                ),
                              ),
                            ),
                            SizedBox(height: 3),
                            SizedBox(
                              width: MediaQuery.of(context).size.width * 0.6,

                              child: Text(
                                "J.K. Rowling",
                                style: Style.TextStyle14,
                              ),
                            ),
                            SizedBox(
                              width: MediaQuery.of(context).size.width * 0.6,
                              child: Row(
                                children: [
                                  Text(
                                    "19.99",
                                    style: Style.TextStyle20.copyWith(
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  SizedBox(width: 60),
                                  BookRaiting(),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          );
        } else if (state is BestSellerFailure) {
          return Customerror(errorMessage: state.errorMessage);
        } else {
          return CustomLodingIndecator();
        }
      },
    );
  }
}
