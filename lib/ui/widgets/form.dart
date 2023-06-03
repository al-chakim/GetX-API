import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_api/controllers/loginC.dart';
import 'package:getx_api/ui/shared/theme.dart';

class CustomForm extends StatelessWidget {
  final String title;
  final String hintText;
  final bool obscureText;
  final TextEditingController controller;

  final dynamic suffixIcon;
  //final VoidCallback press;

  final c = Get.put(LoginC());

  CustomForm({
    Key? key,
    required this.title,
    required this.hintText,
    required this.controller,
    this.obscureText = false,

    //
    this.suffixIcon,
    //this.press = () => c.hidden.toggle(),
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(title),
          const SizedBox(
            height: 6,
          ),
          TextFormField(
            cursorColor: item,
            //keyboardType: masuk,
            controller: controller,
            obscureText: obscureText,
            decoration: InputDecoration(
              suffixIcon: suffixIcon,
              hintText: hintText,
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(defaultRadius),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(defaultRadius),
                borderSide: BorderSide(color: bitu),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
