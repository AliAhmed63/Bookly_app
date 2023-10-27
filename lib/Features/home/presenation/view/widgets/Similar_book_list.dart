import 'package:bookly_app/Core/UTILS/custom_error_widget.dart';
import 'package:bookly_app/Core/UTILS/custom_loading.dart';
import 'package:bookly_app/Features/home/presenation/view_model/Similar_books/smiliar_books_cubit.dart';
import 'package:bookly_app/Features/home/presenation/view_model/Similar_books/smiliar_books_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'Custom_item_view.dart';

class SimilarBookListView extends StatelessWidget {
  const SimilarBookListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SimilarBooksCubit, SimilarBooksState>(
      builder: (context, state) {
        if (state is SimilarBooksSuccess) {
          return SizedBox(
            height: MediaQuery
                .of(context)
                .size
                .height * .14,
            child: ListView.builder(
              itemCount:state.books.length ,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 5.0),
                    child: CustomImageView(imageUrl:state.books[index].volumeInfo.imageLinks?.thumbnail??'',),
                  );
                }),
          );
        }else if (state is SimilarBooksFailure)
        {
          return CustomErrorWidget(errMessage: state.errMessage);
        }else{
          return const CustomLoading();
        }
      },
    );
  }
}
