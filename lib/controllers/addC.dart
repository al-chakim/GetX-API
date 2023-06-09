import 'package:get/get.dart';
import 'package:flutter/material.dart';

class AddC extends GetxController {
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
    npmC.dispose();
    namaC.dispose();
    nomerC.dispose();
    emailC.dispose();
    super.onClose();
  }
}
