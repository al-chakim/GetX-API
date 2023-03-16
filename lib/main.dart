import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_api/ui/pages/home.dart';

void main() => runApp(MyApis());

class MyApis extends StatelessWidget {
  const MyApis({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Home(),
    );
  }
}
