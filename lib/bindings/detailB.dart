import 'package:get/get.dart';
import 'package:getx_api/controllers/detailC.dart';

class DetailDataB implements Bindings {
  @override
  void dependencies() {
    Get.put(DetailC());
  }
}
