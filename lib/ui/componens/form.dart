import 'package:flutter/material.dart';
import 'package:getx_api/ui/colors/color.dart';

class CustomForm extends StatelessWidget {
  final String title;
  final String hintText;
  final bool obscureText;
  final TextEditingController controller;

  const CustomForm({
    Key? key,
    required this.title,
    required this.hintText,
    this.obscureText = false,
    required this.controller,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(title),
          SizedBox(
            height: 6,
          ),
          TextFormField(
            cursorColor: item,
            controller: controller,
            obscureText: obscureText,
            decoration: InputDecoration(
              hintText: hintText,
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(defaultRadius),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(defaultRadius),
                borderSide: BorderSide(color: bitu),
              ),
            ),
          )
        ],
      ),
    );
  }
}
