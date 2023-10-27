import 'package:bookly_app/Core/UTILS/app_router.dart';
import 'package:bookly_app/Features/home/data/repo/home_repo_impl.dart';
import 'package:bookly_app/Features/home/presenation/view_model/featured_books/featured_books_cubit.dart';
import 'package:bookly_app/Features/home/presenation/view_model/newset_books/new_set_books_cubit.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'Core/UTILS/api_service.dart';
import 'Core/UTILS/service_locator.dart';
import 'constants.dart';

void main() {
  setupServiceLocator();
  runApp(const B00klyApp());
}

class B00klyApp extends StatelessWidget {
  const B00klyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => FeaturedBooksCubit(
           getIt.get<HomeRepoImpl>()
          )..fetchFeaturedBooks(),
        ),


        BlocProvider(
          create: (context) => NewSetBooksCubit(
              getIt.get<HomeRepoImpl>()
          )..fetchNewSetBooks(),
        )
      ],
      child: MaterialApp.router(
        routerConfig: AppRouter.router,
        debugShowCheckedModeBanner: false,
        theme: ThemeData.dark().copyWith(
          scaffoldBackgroundColor: kPrimaryColor,
          textTheme:
              GoogleFonts.montserratTextTheme(ThemeData.dark().textTheme),
        ),
      ),
    );
  }
}

// gradient: LinearGradient(
// begin: Alignment.topCenter,
// colors: [
//
// Color(0XFF2A204C),
// Color(0XFF9D8ED3),
// ],
// ),
