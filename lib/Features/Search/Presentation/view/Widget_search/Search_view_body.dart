import 'package:flutter/material.dart';
import '../../../../../Core/UTILS/Styles.dart';
import '../../../../home/presenation/view/widgets/Best_seller_item.dart';
import 'Custom_Search_icon_textFiled.dart';

class SearchViewBody extends StatelessWidget {
  const SearchViewBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  const Padding(
      padding: EdgeInsets.symmetric(horizontal: 30.0,vertical: 10),
      child: Column(
        children: [
          CustomTextFiled(),
          SizedBox(height: 16,),
          Align(
            alignment: Alignment.topLeft,
            child: Text(
              'Search Result',
              style: Styles.titleStyle22,
            ),
          ),
          SizedBox(height: 16,),
          Expanded(child: SearchResultListView()),
        ],
      ),
    );
  }
}

class SearchResultListView extends StatelessWidget {
  const SearchResultListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  ListView.builder(
      //تاخد الطول بتاع الايتمك بتاعها مهما كان الطول
      // shrinkWrap: true,
      //اتنين كاستوم اسكرول فيو فلازم نوقف واحده عن الاسكرول وطبيعي هتبقا الاصغر او الاقل فوقفنها عن الاسكرول بالدالة دي
        padding: EdgeInsets.zero,
        itemCount: 50,
        itemBuilder: (context, index) {
          return const Padding(
            padding: EdgeInsets.symmetric(vertical: 10.0),
            // child: BestSellerItem(),
          );
        });
  }
}


