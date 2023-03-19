import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_api/controllers/dataC.dart';
import 'package:getx_api/controllers/detailC.dart';
import 'package:getx_api/ui/components/button.dart';
import 'package:getx_api/ui/components/form.dart';
import 'package:getx_api/ui/themes/color.dart';

import '../../models/data.dart';

class Detail extends StatelessWidget {
  final detailp = Get.find<DetailC>();
  final datap = Get.find<DatasC>();
  final String uid = Get.arguments;
  @override
  Widget build(BuildContext context) {
    final Data data = datap.dataById(uid);
    detailp.npmC.text = data.npm!;
    detailp.namaC.text = data.nama!;
    detailp.nomerC.text = data.nomer!;
    detailp.emailC.text = data.email!;

    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Rincian Data',
          style: whiteTextStyle.copyWith(
            fontWeight: semibold,
          ),
        ),
        backgroundColor: bitu,
      ),
      body: SafeArea(
        child: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                children: [
                  CustomForm(
                    title: 'NPM',
                    hintText: 'NPM',
                    controller: detailp.npmC,
                  ),
                  CustomForm(
                    title: 'Nama',
                    hintText: "Nama",
                    controller: detailp.namaC,
                  ),
                  CustomForm(
                    title: 'Nomor WA/Tlpn',
                    hintText: "Nama",
                    controller: detailp.nomerC,
                  ),
                  CustomForm(
                    title: 'Email',
                    hintText: "Email",
                    controller: detailp.emailC,
                  ),
                  CustomButton(
                    title: 'SIMPAN PERUBAHAN',
                    onPressed: () {
                      datap.edit(
                        uid,
                        detailp.npmC.text,
                        detailp.namaC.text,
                        detailp.nomerC.text,
                        detailp.emailC.text,
                      );
                    },
                    Color: bitu,
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
