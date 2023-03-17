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
                    title: "Nama",
                    hintText: "Nama Lengkap",
                    controller: addP.npmC,
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  CustomForm(
                    title: "Nama",
                    hintText: "Nama Lengkap",
                    controller: addP.namaC,
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  CustomForm(
                    title: "Nomor WA/Tlpn",
                    hintText: "Nomor",
                    controller: addP.nomerC,
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  CustomForm(
                    title: "Email",
                    hintText: "E-Mail",
                    controller: addP.emailC,
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  CustomButton(
                    title: "ADD DATA",
                    onPressed: () {},
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
