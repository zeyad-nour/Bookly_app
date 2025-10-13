import 'package:bokly_app/Features/home/presentation/views/wigets/CustomAppBar.dart';
import 'package:bokly_app/Features/home/presentation/views/wigets/FeaturedListView.dart';
import 'package:bokly_app/Features/home/presentation/views/wigets/best_seller_list_view_iteam.dart';
import 'package:bokly_app/core/utils/styles.dart';
import 'package:flutter/material.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: SafeArea(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomAppbar(),
                Padding(
                  padding: const EdgeInsets.only(left: 18.0),
                  child: FeaturedBooksList(),
                ),
                SizedBox(height: 50),
                Text("  Best Seller", style: Style.TextStyle18),
                SizedBox(height: 20),
              ],
            ),
          ),
        ),
        SliverList(
          delegate: SliverChildBuilderDelegate((context, index) {
            return Padding(
              padding: const EdgeInsets.symmetric(vertical: 20.0),
              child: BestSellerListViewIteams(),
            );
          }, childCount: 1),
        ),
      ],
    );
  }
}
