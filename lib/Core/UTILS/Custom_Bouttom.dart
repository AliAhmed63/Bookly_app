import 'package:bookly_app/Core/UTILS/Styles.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton(
      {Key? key,
      required this.backgroundColor,
      required this.textColor,
       this.borderRadius, required this.text,  this.fontSize, this.onPressed})
      : super(key: key);
  final String text;
  final double? fontSize;
  final void Function()? onPressed;
  final Color backgroundColor;
  final Color textColor;
  final BorderRadius? borderRadius;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 48,
      child: TextButton(
        style: TextButton.styleFrom(
          backgroundColor: backgroundColor,
          shape:
              RoundedRectangleBorder(borderRadius: borderRadius ?? BorderRadius.circular(16)),
        ),
        onPressed: onPressed,
        child: Text(
          text,
          style: Styles.titleStyle22
              .copyWith(color: textColor, fontWeight: FontWeight.bold,fontSize:fontSize ),

        ),
      ),
    );
  }
}
