import 'package:flutter/material.dart';
import '../../../../../Core/UTILS/CustomAppBar.dart';
import '../../../../../Core/UTILS/Styles.dart';
import 'Best_seller_list.dart';
import 'Featured_list_view.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  const CustomScrollView(
      physics: BouncingScrollPhysics(),
      // بيخليك تعمل اسكرول لليست كلها بدون اي مشكل مهما كان عدد الايتم الي بتسكرول تحتها
      slivers: [
        SliverToBoxAdapter(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.0),
                child: CustomAppBar(),
              ),
              FeaturedBooksListView(),
              SizedBox(
                height: 50,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 30.0),
                child: Text(
                  'NewSet Books',
                  style: Styles.titleStyle22,
                ),
              ),
              SizedBox(height: 20),
            ],
          ),
        ),
        SliverFillRemaining(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 30.0),
            child: BestSellerList(),
          ),
        )
      ],
    );
  }
}

