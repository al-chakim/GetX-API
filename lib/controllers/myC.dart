import 'package:get/get.dart';
import 'package:getx_api/services/service.dart';

class MyC extends GetxController with StateMixin<Map<String, dynamic>> {
  void getData() {
    try {
      Service().getUser().then((response) {
        if (response.statusCode == 200) {
          final data = response.body["data"] as Map<String, dynamic>;
          change(
            data,
            status: RxStatus.success(),
          );
        }
      }, onError: (_) {
        change(null, status: RxStatus.error("Tidak dapat data API"));
      });
    } catch (err) {
      change(null, status: RxStatus.error(err.toString()));
    }
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
