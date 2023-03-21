import 'dart:convert';

import 'package:get/get.dart';

class DatasS extends GetConnect {
  final url =
      "https://getconnect-project-6db8d-default-rtdb.asia-southeast1.firebasedatabase.app/";
  // get
  Future<Response> getData(int id) => get('');

  //post
  Future<Response> postData(
    String id,
    String npm,
    String nama,
    String nomer,
    String email,
  ) {
    final body = json.encode({
      "id": id,
      "npm": npm,
      "nama": nama,
      "nomer": nomer,
      "email": email,
    });

    return post(url + "datas.json", body);
  }
}
