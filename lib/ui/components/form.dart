import 'package:flutter/material.dart';
import 'package:getx_api/controllers/addC.dart';
import 'package:getx_api/controllers/dataC.dart';
import 'package:getx_api/ui/themes/color.dart';
import 'package:get/get.dart';

class CustomForm extends StatelessWidget {
  final coba = Get.put(AddC());
  final cobi = Get.put(DatasC());

  final String title;
  final String hintText;
  final bool obscureText;
  final TextEditingController controller;

  CustomForm({
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
            // onEditingComplete: () {
            //   cobi.datas(
            //     coba.npmC.text,
            //     coba.namaC.text,
            //     coba.nomerC.text,
            //     coba.emailC.text,
            //   );
            // },
          ),
        ],
      ),
    );
  }
}
