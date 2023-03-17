import 'package:get/get.dart';
import 'package:flutter/material.dart';

class DetailC extends GetxController {
  late TextEditingController npmC;
  late TextEditingController namaC;
  late TextEditingController nomerC;
  late TextEditingController emailC;

  @override
  void onInit() {
    super.onInit();
    npmC = TextEditingController();
    namaC = TextEditingController();
    nomerC = TextEditingController();
    emailC = TextEditingController();
  }

  @override
  void onClose() {
    namaC.dispose();
    npmC.dispose();
    nomerC.dispose();
    emailC.dispose();
    super.onClose();
  }
}
