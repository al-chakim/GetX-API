import 'package:get/get.dart';
import 'package:getx_api/controllers/addC.dart';

class AddDataB implements Bindings {
  @override
  void dependencies() {
    // TODO: implement dependencies
    Get.put(AddC());
  }
}
