import 'package:get/get.dart';

class MyC extends GetxController with StateMixin<String> {
  void getData() {
    change(
      "Get data dari API",
      status: RxStatus.success(),
    );
  }

  @override
  void onInit() {
    change(
      null,
      status: RxStatus.empty(),
    );
    // TODO: implement onInit
    super.onInit();
  }
}
