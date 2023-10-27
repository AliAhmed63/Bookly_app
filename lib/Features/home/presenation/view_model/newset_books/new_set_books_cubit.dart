import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

import '../../../data/models/book_model.dart';
import '../../../data/repo/home_repo.dart';

part 'new_set_books_state.dart';

class NewSetBooksCubit extends Cubit<NewSetBooksState> {
  NewSetBooksCubit(this.homeRepo) : super(NewSetBooksInitial());
  final HomeRepo homeRepo;

  Future<void> fetchNewSetBooks() async {
    emit(NewSetBooksLoading());
    var result = await homeRepo.fetchNewSetBooks();

    result.fold((failure) {
      emit(NewSetBooksFailure(failure as String));
    }, (books) {
      emit(NewSetBooksSuccess(books));
    });
  }
}
