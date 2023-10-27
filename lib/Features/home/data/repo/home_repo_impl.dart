import 'package:bookly_app/Core/UTILS/Errors/failers.dart';
import 'package:bookly_app/Core/UTILS/api_service.dart';
import 'package:bookly_app/Features/home/data/models/book_model.dart';
import 'package:dartz/dartz.dart';
import 'home_repo.dart';

class HomeRepoImpl implements HomeRepo {
  final ApiService apiService;

  HomeRepoImpl( this.apiService);

  @override
  Future<Either<Failure, List<BookModel>>> fetchNewSetBooks() async {
    try {
      var data = await apiService.get(
          endPointUrl: 'volumes?Filtering=free-ebooks&q=subject:science&Sorting=newest');
      List<BookModel> books = [];
      for (var item in data['items'])
      {
        try {
          books.add(BookModel.fromJson(item));
        } catch (e) {
          books.add(BookModel.fromJson(item));
        }
      }
      return right(books);
    }  catch (e) {
      return left(ServerFailure());
    }
  }

  @override
  Future<Either<Failure, List<BookModel>>> fetchFeaturedBooks() async{
    try {
      var data = await apiService.get(
          endPointUrl: 'volumes?Filtering=free-ebooks&q=subject:cooks');
      List<BookModel> books = [];
      for (var item in data['items'])
      {
        books.add(BookModel.fromJson(item));
      }
      return right(books);
    }  catch (e) {
      return left(ServerFailure());

    }

  }

  @override
  Future<Either<Failure, List<BookModel>>> fetchSimilarBooks({required String category}) async{
    try {
      var data = await apiService.get(
          endPointUrl: 'volumes?Filtering=free-ebooks&Sorting=relevance&q=subject:science');
      List<BookModel> books = [];
      for (var item in data['items'])
      {
        books.add(BookModel.fromJson(item));
      }
      return right(books);
    }  catch (e) {
      return left(ServerFailure());

    }


  }
}
