import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_api/models/data.dart';
import 'package:getx_api/services/datasS.dart';
import 'package:getx_api/ui/themes/color.dart';

class DatasC extends GetxController {
  var datas = List<Data>.empty().obs;

  void snackBarError(String msg) {
    Get.snackbar(
      "ERROR",
      msg,
      duration: Duration(seconds: 3),
      snackPosition: SnackPosition.BOTTOM,
    );
  }

  void add(
    String npm,
    String nama,
    String nomer,
    String email,
  ) {
    if (npm != '' && nama != '' && email != '' && nomer != '') {
      if (email.contains('@')) {
        DatasS().postData(npm, nama, nomer, email).then(
          (value) {
            datas.add(
              Data(
                id: value.body["name"],
                npm: npm,
                nama: nama,
                nomer: nomer,
                email: email,
              ),
            );
          },
        );
        Get.back();
      } else {
        snackBarError("Masukkan Email Valid");
      }
    } else {
      snackBarError("Isi Seluruh Data");
    }
  }

  Data dataById(String id) {
    return datas.firstWhere((element) => element.id == id);
  }

  // Data dataById(
  //   String id,
  //   // String npm,
  //   // String nama,
  //   // String nomer,
  //   // String email,
  // ) {
  //   DatasS().getData(id).then((value) {
  //     datas.firstWhere((element) => element.id == id);
  //   });
  // }

  void edit(
    String id,
    String npm,
    String nama,
    String nomer,
    String email,
  ) {
    if (npm != '' && nama != '' && email != '' && nomer != '') {
      if (email.contains('@')) {
        DatasS().editData(id, npm, nama, nomer, email).then(
          (_) {
            final data = dataById(id);
            data.npm = npm;
            data.nama = nama;
            data.nomer = nomer;
            data.email = email;
            datas.refresh();
          },
        );
        Get.back();
      } else {
        snackBarError("Masukkan Email Valid");
      }
    } else {
      snackBarError("Isi Seluruh Data");
    }
  }

  Future<bool> delete(String id) async {
    bool _deleted = false;
    await Get.defaultDialog(
      buttonColor: Colors.white,
      backgroundColor: bitu,
      cancelTextColor: Colors.white,
      contentPadding: const EdgeInsets.all(20),
      title: "DELETE",
      titleStyle: const TextStyle(
        color: Colors.white,
      ),
      titlePadding: const EdgeInsets.only(top: 20),
      middleText: "Apakah anda yakin akan menghapus data ini?",
      middleTextStyle: const TextStyle(
        color: Colors.white,
      ),
      textConfirm: "Ya",
      confirmTextColor: Colors.red,
      onConfirm: () {
        DatasS().deleteData(id).then((_) {
          datas.removeWhere((element) => element.id == id);
          _deleted = true;
        });

        Get.back();
      },
      textCancel: "Tidak",
    );

    return _deleted;
  }
}
