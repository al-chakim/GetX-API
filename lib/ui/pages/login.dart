import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_api/controllers/loginC.dart';

import 'package:getx_api/ui/shared/theme.dart';
import 'package:getx_api/ui/widgets/button.dart';
import 'package:getx_api/ui/widgets/form.dart';

class LoginPage extends StatelessWidget {
  final c = Get.find<LoginC>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          SizedBox(
            height: 25,
          ),
          Padding(
            padding: const EdgeInsets.only(
              left: 20,
              right: 20,
            ),
            child: Column(
              children: [
                Text(
                  'Login',
                  style: greenTextStyle.copyWith(
                    fontSize: 35,
                    fontWeight: bold,
                  ),
                ),
                const SizedBox(
                  height: 100,
                ),
                CustomForm(
                  title: 'Email',
                  hintText: 'Email',
                  controller: c.emailC,
                ),
                Obx(
                  () => CustomForm(
                    title: 'Password',
                    hintText: 'Password',
                    controller: c.passC,
                    obscureText: c.hidden.value,
                    suffixIcon: IconButton(
                      onPressed: () => c.hidden.toggle(),
                      icon: Icon(Icons.remove_red_eye),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                CustomButton(
                  title: 'Sign In',
                  onPressed: () => Get.toNamed('/HomePage'),
                  Color: ijo,
                  margin: const EdgeInsets.only(
                    bottom: 10,
                  ),
                ),
                Text(
                  'Or',
                  style: blackTextStyle.copyWith(
                    fontWeight: semibold,
                  ),
                ),
                CustomButton(
                  title: 'Sign Up',
                  onPressed: () {},
                  Color: merah,
                  margin: const EdgeInsets.only(
                    top: 10,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
