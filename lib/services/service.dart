import 'package:get/get.dart';

class Service extends GetConnect {
  Future<Response> getUser() => get('https://reqres.in/api/users/2');
}
