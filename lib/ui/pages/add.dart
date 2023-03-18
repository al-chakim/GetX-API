import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_api/controllers/addC.dart';
import 'package:getx_api/controllers/dataC.dart';
import 'package:getx_api/ui/colors/color.dart';
import 'package:getx_api/ui/componens/button.dart';
// import 'package:getx_api/ui/componens/form.dart';

class Add extends StatelessWidget {
  final datap = Get.find<DatasC>();
  final addp = Get.find<AddC>();
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
                    controller: addp.npmC,
                    autocorrect: false,
                    decoration: InputDecoration(
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
                    controller: addp.namaC,
                    autocorrect: false,
                    decoration: InputDecoration(
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
                    controller: addp.nomerC,
                    keyboardType: TextInputType.phone,
                    autocorrect: false,
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
                    controller: addp.emailC,
                    autocorrect: false,
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
                    // onEditingComplete: () {
                    //   datap.add(
                    //     addp.npmC.text,
                    //     addp.namaC.text,
                    //     addp.nomerC.text,
                    //     addp.emailC.text,
                    //   );
                    // },
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
                    onPressed: () {
                      datap.add(
                        addp.npmC.text,
                        addp.namaC.text,
                        addp.nomerC.text,
                        addp.emailC.text,
                      );
                    },
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
