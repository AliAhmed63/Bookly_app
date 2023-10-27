part of 'new_set_books_cubit.dart';

abstract class NewSetBooksState extends Equatable {
  const NewSetBooksState();
  @override
  List<Object> get props => [];
}

class NewSetBooksInitial extends NewSetBooksState {

}
class NewSetBooksSuccess extends NewSetBooksState {
  final List<BookModel> books;

  const NewSetBooksSuccess(this.books);

}

class NewSetBooksFailure extends NewSetBooksState {
  final String errMessage;

  const NewSetBooksFailure(this.errMessage);
}

class NewSetBooksLoading extends NewSetBooksState {}
