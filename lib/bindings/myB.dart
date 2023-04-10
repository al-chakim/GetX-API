import 'package:get/get.dart';
import 'package:getx_api/controllers/myC.dart';

class MyB implements Bindings {
  @override
  void dependencies() {
    Get.put(MyC());
  }
}
