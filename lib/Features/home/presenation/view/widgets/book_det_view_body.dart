import 'package:bookly_app/Core/UTILS/Styles.dart';
import 'package:bookly_app/Features/home/data/models/book_model.dart';
import 'package:bookly_app/Features/home/presenation/view/widgets/Book_rating.dart';
import 'package:flutter/material.dart';
import 'Box_action_botton.dart';
import 'Custom_item_view.dart';
import 'Similar_book_list.dart';
import 'customBookDetailsAppBar.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({Key? key, required this.bookModel}) : super(key: key);
final BookModel bookModel;
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery
        .of(context)
        .size
        .width;
    return CustomScrollView(
      slivers: [
        SliverFillRemaining(
          hasScrollBody: false,
          child:Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: Column(
              children: [
                const CustomBookDetailsAppBar(),
                Padding(
                  padding:
                  EdgeInsets.symmetric(horizontal: width * .18, vertical: 9),
                  child:  CustomImageView(imageUrl:bookModel.volumeInfo.imageLinks?.thumbnail??'',),
                ),
                const SizedBox(
                  height: 25,
                ),
                 Text(
                  bookModel.volumeInfo.title!,
                  textAlign: TextAlign.center,
                  style: Styles.titleStyle30,
                ),
                const SizedBox(
                  height: 8,
                ),
                Opacity(
                  opacity: .7,
                  child: Text(
                   bookModel.volumeInfo.authors?[0]??'',
                    style: Styles.titleStyle22.copyWith(
                      fontStyle: FontStyle.italic,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 12,
                ),
                 BookRating(
                  mainAxisAlignment: MainAxisAlignment.center,
                  rating:bookModel.volumeInfo.averageRating??0 ,
                  count: bookModel.volumeInfo.ratingsCount??0,
                ),
                const SizedBox(
                  height: 33,
                ),
                BooksAction(
                  bookModel:bookModel ,
                ),
                const Expanded(
                  child: SizedBox(
                    height: 32,
                  ),
                ),
                Align(alignment: Alignment.centerLeft,
                  child: Text('You Can also Like',
                    style: Styles.titleStyle17.copyWith(
                        fontWeight: FontWeight.w900),),),
                const SizedBox(
                  height: 16,
                ),
                const SimilarBookListView(),
                const SizedBox(
                  height: 32,
                ),
              ],
            ),
          ) ,
        )
      ],
    );
  }
}



