import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_api/routes/page.dart';

void main() => runApp(MyApis());

class MyApis extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      getPages: AppPages.pages,
    );
  }
}
