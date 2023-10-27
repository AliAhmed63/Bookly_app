import 'package:bookly_app/Features/home/data/models/book_model.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../../../../Core/UTILS/Custom_Bouttom.dart';

class BooksAction extends StatelessWidget {
  const BooksAction({Key? key, required this.bookModel}) : super(key: key);
final BookModel bookModel;
  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: Row(
        children: [
          const Expanded(
            child: CustomButton(
              text: 'Free',
              backgroundColor: Colors.white,
              textColor: Colors.black,
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(18), bottomLeft: Radius.circular(18)),
            ),
          ),
          const SizedBox(width: 1,),
          Expanded(
            child: CustomButton(
              onPressed: () async{
                Uri uri = Uri.parse(bookModel.volumeInfo.previewLink!);
                if (await canLaunchUrl(uri)) {
                  await launchUrl(uri);
                }
              },
              text: 'Free Preview',
              backgroundColor: Colors.redAccent,
              textColor: Colors.white,
              fontSize: 18,
              borderRadius: const BorderRadius.only(
                  topRight: Radius.circular(18), bottomRight: Radius.circular(18)),
            ),
          )
        ],
      ),
    );
  }
}
