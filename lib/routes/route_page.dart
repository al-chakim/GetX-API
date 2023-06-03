import 'package:get/get.dart';
import 'package:getx_api/routes/route_name.dart';
import 'package:getx_api/ui/pages/home.dart';
import 'package:getx_api/ui/pages/login.dart';

class AppPage {
  static final pages = [
    GetPage(
      name: RouteName.home,
      page: () => HomePage(),
    ),
    GetPage(
      name: RouteName.login,
      page: () => LoginPage(),
    ),
  ];
}
