import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_api/routes/name.dart';
import 'package:getx_api/ui/pages/add.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Dataku'),
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
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Text('Data Masih Kosong'),
          ),
        ),
      ),
    );
  }
}
