import 'package:bookly_app/Core/UTILS/service_locator.dart';
import 'package:bookly_app/Features/home/data/models/book_model.dart';
import 'package:bookly_app/Features/home/data/repo/home_repo_impl.dart';
import 'package:bookly_app/Features/home/presenation/view_model/Similar_books/smiliar_books_cubit.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:bloc/bloc.dart';
import '../../Features/Search/Presentation/view/Search_view.dart';
import '../../Features/home/presenation/view/book_details_view.dart';
import '../../Features/home/presenation/view/home_view.dart';
import '../../Features/splash/splash_view.dart';

abstract class AppRouter
{
  static const kHomeView = '/homeView';
  static const kSearchView = '/SearchView';
  static const kBookDetailsView = '/bookDetailsView';
  static const kSplashView = '/';
  static final router = GoRouter(
    routes: [
      GoRoute(
        path:  kSplashView ,
        builder: (context, state) => const SplashView(),
      ),
      GoRoute(
        path: kHomeView,
        builder: (context, state) => const HomeView(),
      ),
      GoRoute(
        path: kBookDetailsView,
        builder: (context, state) => BlocProvider(
            create: (context)=>SimilarBooksCubit(getIt.get<HomeRepoImpl>()),
        child:  BookDetailsView(
          bookModel: state.extra as BookModel,
        )),
      ),
      GoRoute(
        path:  kSearchView ,
        builder: (context, state) => const SearchView(),
      ),
    ],
  );
}