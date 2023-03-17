import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_api/routes/name.dart';

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
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Get.toNamed(RuteNama.data);
        },
        child: Icon(Icons.download),
      ),
    );
  }
}
