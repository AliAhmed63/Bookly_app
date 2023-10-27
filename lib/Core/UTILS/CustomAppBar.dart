import 'package:bookly_app/Core/UTILS/Assets.dart';
import 'package:bookly_app/Core/UTILS/app_router.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 54,bottom:20,),
      child: Row(
        children: [
          Image.asset(AssetsData.logo,width:130 ,height: 45,),
          const Spacer(),
          IconButton(onPressed: (){
            GoRouter.of(context).push(AppRouter.kSearchView);
          }, icon: const Icon(FontAwesomeIcons.magnifyingGlass,size: 26,),)
        ],
      ),
    );
  }
}
