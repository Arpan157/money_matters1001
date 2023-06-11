import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:money_matters100/screens/view/loginPage.dart';

class splashView extends StatelessWidget {
  const splashView({super.key});

  @override
  Widget build(BuildContext context) {
    Timer(const Duration(seconds: 3), () {
      Get.to(loginPage());
    });
    return Scaffold(
      backgroundColor: Color(0xff368983),
      body: const Center(
        child: Text(
          'MoneyMatters',
          style: TextStyle(
              color: Colors.white, fontSize: 40, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
