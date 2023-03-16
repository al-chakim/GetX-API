import 'package:get/get.dart';
import 'package:getx_api/routes/name.dart';
import 'package:getx_api/ui/pages/add.dart';
import 'package:getx_api/ui/pages/home.dart';

class AppPages {
  static final pages = [
    GetPage(name: RuteNama.home, page: () => Home()),
    GetPage(name: RuteNama.add, page: () => Add()),
  ];
}
