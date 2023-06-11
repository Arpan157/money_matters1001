// import 'dart:developer';
import 'package:firebase_core/firebase_core.dart';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
// import 'package:money_matters100/screens/view/loginPage.dart';
import 'package:money_matters100/screens/view/splash.view.dart';
// import 'package:money_matters100/widgets/bottomnavigationbar.dart';

// import 'package:hive_flutter/hive_flutter.dart';

// import 'data/model/add_date.dart';

// void main() async {
//   await Hive.initFlutter();
//   Hive.registerAdapter(AdddataAdapter());
//   await Hive.openBox<Add_data>('data');
//   runApp(const MyApp());
// }
Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: splashView(),
    );
  }
}
