import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_api/controllers/dataC.dart';
import 'package:getx_api/routes/name.dart';
import 'package:getx_api/ui/colors/color.dart';

class Home extends StatelessWidget {
  final datasC = Get.find<DatasC>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: bitu,
        title: Text(
          'Dataku',
          style: whiteTextStyle.copyWith(
            fontWeight: semibold,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {
              Get.toNamed(RuteNama.add);
            },
            icon: Icon(Icons.add),
          ),
        ],
      ),
      body: SafeArea(
        child: Center(
          child: Obx(
            () => Padding(
              padding: const EdgeInsets.all(20),
              child: datasC.datas.isEmpty
                  ? Center(
                      child: Text(
                        'Data Masih Kosong',
                        style: blackTextStyle.copyWith(
                          fontSize: 15,
                        ),
                      ),
                    )
                  : ListView.builder(
                      itemCount: datasC.datas.length,
                      itemBuilder: (context, i) => ListTile(
                        leading: CircleAvatar(),
                        title: Text("${datasC.datas[i].nama}"),
                        subtitle: Text("${datasC.datas[i].email}"),
                        trailing: IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.delete_forever,
                            color: Colors.red,
                          ),
                        ),
                        onTap: () {
                          Get.toNamed(
                            RuteNama.detail,
                            arguments: datasC.datas[i].id,
                          );
                        },
                      ),
                    ),
            ),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: bitu,
        onPressed: () {
          Get.toNamed(RuteNama.detail);
        },
        child: Icon(Icons.download),
      ),
    );
  }
}
