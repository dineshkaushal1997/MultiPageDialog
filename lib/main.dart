import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_dialog_demo/controller/home_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:firebase_dialog_demo/screen/screen1.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  HomeController homeController=Get.put(HomeController());
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      home: Screen1(),
    );
  }
}
