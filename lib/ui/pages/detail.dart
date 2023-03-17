import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_api/ui/colors/color.dart';

class Detail extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
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
          children: [],
        ),
      ),
    );
  }
}
