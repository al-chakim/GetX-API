import 'package:get/get.dart';
import 'package:getx_api/controllers/dataC.dart';

class DataUserB implements Bindings {
  @override
  void dependencies() {
    Get.put(DataC());
  }
}
