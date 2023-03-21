import 'dart:convert';

import 'package:get/get.dart';

class DatasS extends GetConnect {
  final url =
      "https://getconnect-project-6db8d-default-rtdb.asia-southeast1.firebasedatabase.app/";
  // get
  Future<Response> getData(
    String id,
    String npm,
    String nama,
    String nomer,
    String email,
  ) {
    return get(url + "datas.json");
  }

  //post
  Future<Response> postData(
    String npm,
    String nama,
    String nomer,
    String email,
  ) {
    final body = json.encode({
      "npm": npm,
      "nama": nama,
      "nomer": nomer,
      "email": email,
    });

    return post(url + "datas.json", body);
  }

  Future<Response> deleteData(String id) {
    return delete(url + "datas/$id.json");
  }

  Future<Response> editData(
    String id,
    String npm,
    String nama,
    String nomer,
    String email,
  ) {
    final body = json.encode({
      "npm": npm,
      "nama": nama,
      "nomer": nomer,
      "email": email,
    });

    return patch(url + "datas/$id.json", body);
  }
}
