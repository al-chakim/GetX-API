import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_api/models/data.dart';

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

  void add(String id, String nama, String npm, String email, String nomer) {
    if (npm != '' && nama != '' && email != '' && nomer != '') {
      if (email.contains('@')) {
        datas.add(
          Data(
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

  Data dataById(String id) {
    return datas.firstWhere((element) => element.id == id);
  }

  void edit(String id, String nama, String npm, String email, String nomer) {
    if (npm != '' && nama != '' && email != '' && nomer != '') {
      if (email.contains('@')) {
        final data = dataById(id);
        data.nama = nama;
        data.npm = npm;
        data.nomer = nomer;
        data.email = email;
        datas.refresh();
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
      title: "DELETE",
      middleText: "Apakah anda yakin akan menghapus data ini?",
      textConfirm: "Ya",
      confirmTextColor: Colors.white,
      onConfirm: () {
        datas.removeWhere((element) => element.id == id);
        _deleted = true;
        Get.back();
      },
      textCancel: "Tidak",
    );
    return _deleted;
  }
}
