import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_api/controllers/addC.dart';
import 'package:getx_api/controllers/dataC.dart';
import 'package:getx_api/ui/colors/color.dart';
import 'package:getx_api/ui/componens/button.dart';
// import 'package:getx_api/ui/componens/form.dart';

class Add extends StatelessWidget {
  final dataP = Get.find<DatasC>();
  final addP = Get.find<AddC>();
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
                  TextField(
                    cursorColor: item,
                    controller: addP.npmC,
                    autocorrect: false,
                    textInputAction: TextInputAction.next,
                    decoration: InputDecoration(
                      // hintText: 'NPM',
                      labelText: 'NPM',
                      labelStyle: TextStyle(color: item),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(defaultRadius),
                        borderSide: BorderSide(color: bitu),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  TextField(
                    cursorColor: item,
                    controller: addP.namaC,
                    autocorrect: false,
                    //textInputAction: TextInputAction.next,
                    decoration: InputDecoration(
                      // hintText: 'NPM',
                      labelText: 'Nama',
                      labelStyle: TextStyle(color: item),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(defaultRadius),
                        borderSide: BorderSide(color: bitu),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  TextField(
                    cursorColor: item,
                    controller: addP.nomerC,
                    keyboardType: TextInputType.phone,
                    autocorrect: false,
                    //textInputAction: TextInputAction.next,
                    decoration: InputDecoration(
                      // hintText: 'NPM',
                      labelText: 'Nomor',
                      labelStyle: TextStyle(color: item),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(defaultRadius),
                        borderSide: BorderSide(color: bitu),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  TextField(
                    cursorColor: item,
                    keyboardType: TextInputType.emailAddress,
                    controller: addP.emailC,
                    autocorrect: false,
                    // textInputAction: TextInputAction.next,
                    decoration: InputDecoration(
                      // hintText: 'NPM',
                      labelText: 'Email',
                      labelStyle: TextStyle(color: item),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(defaultRadius),
                        borderSide: BorderSide(color: bitu),
                      ),
                    ),
                    onEditingComplete: () => dataP.add(
                      addP.npmC.text,
                      addP.namaC.text,
                      addP.emailC.text,
                      addP.nomerC.text,
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),

                  // with component useless

                  // CustomForm(
                  //   title: "NPM",
                  //   hintText: "NPM",
                  //   controller: addP.npmC,
                  // ),
                  // CustomForm(
                  //   title: "Nama",
                  //   hintText: "Nama Lengkap",
                  //   controller: addP.namaC,
                  // ),
                  // CustomForm(
                  //   title: "Nomor WA/Tlpn",
                  //   hintText: "Nomor",
                  //   controller: addP.nomerC,
                  // ),
                  // CustomForm(
                  //   title: "Email",
                  //   hintText: "E-Mail",
                  //   controller: addP.emailC,
                  // ),
                  // ElevatedButton(
                  //   onPressed: () {},
                  //   child: Text('ADD DATA'),
                  // ),

                  // Custom Button
                  CustomButton(
                    title: "ADD DATA",
                    onPressed: () => dataP.add(
                      addP.npmC.text,
                      addP.namaC.text,
                      addP.emailC.text,
                      addP.phoneC.text,
                    ),
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
