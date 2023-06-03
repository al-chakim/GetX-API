import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:getx_api/controllers/loginC.dart';
import 'package:getx_api/routes/route_page.dart';
import 'package:getx_api/ui/pages/login.dart';

void main() => runApp(MyStorage());

class MyStorage extends StatelessWidget {
  final loginC = Get.put(LoginC());

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      home: LoginPage(),
      getPages: AppPage.pages,
    );
  }
}
