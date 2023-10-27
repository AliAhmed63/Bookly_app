import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../../../../../Core/UTILS/Styles.dart';

class BookRating extends StatelessWidget {
  const BookRating({Key? key, this.mainAxisAlignment = MainAxisAlignment.start, required this.rating, required this.count})
      : super(key: key);
  final MainAxisAlignment mainAxisAlignment;
  final num rating;
  final int count;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: mainAxisAlignment,
      children: <Widget>[
        const Icon(
          FontAwesomeIcons.solidStar,
          size: 20,
          color: Color(0XFFFFDD4F),
        ),
        const SizedBox(
          width: 6.5,
        ),
         Text(
          rating.toString(),
          style: Styles.titleStyle20,
        ),
        const SizedBox(
          width: 5,
        ),
        Text(
          '($count)',
          style: Styles.titleStyle17.copyWith(color: Colors.white30),
        )
      ],
    );
  }
}
