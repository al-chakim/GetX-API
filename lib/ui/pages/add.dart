import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_api/controllers/addC.dart';
import 'package:getx_api/controllers/dataC.dart';
import 'package:getx_api/ui/colors/color.dart';
import 'package:getx_api/ui/componens/button.dart';
import 'package:getx_api/ui/componens/form.dart';

class Add extends StatelessWidget {
  final addP = Get.find<AddC>();
  final dataP = Get.find<DatasC>();
  // final dataP = Get.put(DatasC());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Tambah Data',
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
                  // TextField(
                  //   controller: addP.npmC,
                  //   autocorrect: false,
                  //   //textInputAction: TextInputAction.next,
                  //   decoration: InputDecoration(
                  //     border: OutlineInputBorder(
                  //       borderRadius: BorderRadius.circular(10),
                  //     ),
                  //   ),
                  // ),
                  // SizedBox(
                  //   height: 15,
                  // ),
                  CustomForm(
                    title: "NPM",
                    hintText: "NPM",
                    controller: addP.npmC,
                  ),
                  CustomForm(
                    title: "Nama",
                    hintText: "Nama Lengkap",
                    controller: addP.namaC,
                  ),
                  CustomForm(
                    title: "Nomor WA/Tlpn",
                    hintText: "Nomor",
                    controller: addP.nomerC,
                  ),
                  CustomForm(
                    title: "Email",
                    hintText: "E-Mail",
                    controller: addP.emailC,
                  ),
                  ElevatedButton(
                    onPressed: () {},
                    child: Text('ADD DATA'),
                  ),
                  CustomButton(
                    title: "ADD DATA",
                    onPressed: () {},
                    Color: bitu,
                    margin: EdgeInsets.only(top: 15),
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
