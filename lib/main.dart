import 'package:bokly_app/Features/home/data/repos/home_repo_implemnt.dart';
import 'package:bokly_app/Features/home/domin/entitys/book_entity.dart';
import 'package:bokly_app/Features/home/presentation/manger/BestSeller_cubit/best_seller_cubit.dart';
import 'package:bokly_app/Features/home/presentation/manger/Featured_Cubit/featured_books_cubit.dart';
import 'package:bokly_app/Features/home/presentation/manger/suggestion_cubit/suggestion_cubit_cubit.dart';
import 'package:bokly_app/Features/splash/presentation/views/splash_view.dart';
import 'package:bokly_app/constant.dart';
import 'package:bokly_app/core/utils/service_locator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/adapters.dart';

void main() async {
  setup();
  runApp(const MyApp());
 await Hive.initFlutter();
  Hive.registerAdapter(BookEntityAdapter());
  await Hive.openBox(kFeaturedBox);
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) =>
              FeaturedBooksCubit(getIt.get<HomeRepoImplemnt>())
                ..fetchFeaturedBooks(),
        ),
        BlocProvider(
          create: (context) =>
              BestSellerCubit(getIt.get<HomeRepoImplemnt>())
                ..fetchBestSellerItems(),
        ),
        BlocProvider(
          create: (context) =>
              SuggestionCubitCubit(getIt.get<HomeRepoImplemnt>())
                ..fetchSuggestionBook(),
        ),
      ],

      child: GetMaterialApp(
        theme: ThemeData.dark().copyWith(
          scaffoldBackgroundColor: KPrimaryColor,
          textTheme: GoogleFonts.montserratTextTheme(
            ThemeData.dark().textTheme,
          ),
        ),
        debugShowCheckedModeBanner: false,
        home: SplashView(),
      ),
    );
  }
}
