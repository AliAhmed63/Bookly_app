import 'package:bookly_app/Core/UTILS/custom_error_widget.dart';
import 'package:bookly_app/Core/UTILS/custom_loading.dart';
import 'package:bookly_app/Features/home/data/models/book_model.dart';
import 'package:bookly_app/Features/home/presenation/view_model/newset_books/new_set_books_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'Best_seller_item.dart';

class BestSellerList extends StatelessWidget {
  const BestSellerList({Key? key,}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NewSetBooksCubit, NewSetBooksState>(
      builder: (context, state) {
        if (state is NewSetBooksSuccess) {
          return ListView.builder(
            //تاخد الطول بتاع الايتمك بتاعها مهما كان الطول
            // shrinkWrap: true,
            //اتنين كاستوم اسكرول فيو فلازم نوقف واحده عن الاسكرول وطبيعي هتبقا الاصغر او الاقل فوقفنها عن الاسكرول بالدالة دي
            physics: const NeverScrollableScrollPhysics(),
            padding: EdgeInsets.zero,
            itemCount: state.books.length,
            itemBuilder: (context, index) {
              return  Padding(
                padding: const EdgeInsets.symmetric(vertical: 10.0),
                child: BestSellerItem(
                  bookModel: state.books[index],
                ),
              );
            },
          );
        }else if(state is NewSetBooksFailure)
        {
           return CustomErrorWidget(errMessage: state.errMessage);
        }else
        {
          return const CustomLoading();
        }
      },
    );
  }
}
