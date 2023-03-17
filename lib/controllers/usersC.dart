import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_api/models/user.dart';

class UsersC extends GetxController {
  var users = List<User>.empty().obs;

  void snackBarError(String msg) {
    Get.snackbar(
      "ERROR",
      msg,
      duration: Duration(seconds: 3),
      snackPosition: SnackPosition.BOTTOM,
    );
  }

  void add(String id, String nama, String npm, String email, String nomer) {
    if (npm != '' && nama != '' && email != '' && nomer != '') {
      if (email.contains('@')) {
        users.add(
          User(
            id: DateTime.now().toString(),
            npm: npm,
            nama: nama,
            email: email,
            nomer: nomer,
          ),
        );
        Get.back();
      } else {
        snackBarError("Masukkan Email Valid");
      }
    } else {
      snackBarError("Isi Seluruh Data");
    }
  }

  void edit() {}
}
