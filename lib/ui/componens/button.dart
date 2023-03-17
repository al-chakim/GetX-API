import 'package:flutter/material.dart';
import 'package:getx_api/ui/colors/color.dart';

class CustomButton extends StatelessWidget {
  final String title;
  final double widht;
  final VoidCallback onPressed;
  final EdgeInsets margin;

  const CustomButton({
    Key? key,
    required this.title,
    this.widht = double.infinity,
    required this.onPressed,
    this.margin = EdgeInsets.zero,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: margin,
      width: widht,
      height: 55,
      child: TextButton(
        style: TextButton.styleFrom(
          backgroundColor: ungu,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(defaultRadius),
          ),
        ),
        onPressed: onPressed,
        child: Text(
          title,
          style: whiteTextStyle.copyWith(
            fontSize: 15,
            fontWeight: medium,
          ),
        ),
      ),
    );
  }
}
