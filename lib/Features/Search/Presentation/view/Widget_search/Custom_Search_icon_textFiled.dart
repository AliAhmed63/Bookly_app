import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CustomTextFiled extends StatelessWidget {
  const CustomTextFiled({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.white),
            borderRadius: BorderRadius.circular(12),
          ),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.white),
            borderRadius: BorderRadius.circular(12),
          ),
          hintText: 'Search',
          suffixIcon: IconButton(onPressed: () {},
            icon: const Opacity(opacity: .7,
                child: Icon(FontAwesomeIcons.magnifyingGlass, size: 26,)),)
      ),
    );
  }
}
