import 'package:firebase_dialog_demo/constant/dialog.dart';
import 'package:firebase_dialog_demo/controller/home_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:firebase_dialog_demo/screen/screen2.dart';

class Screen1 extends StatefulWidget {
  @override
  _Screen1State createState() => _Screen1State();
}

class _Screen1State extends State<Screen1> {
  HomeController controller = Get.find();

  @override
  void initState() {
    // TODO: implement initState
    controller.dispose();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Screen1'),
          actions: [
            IconButton(
              onPressed: () {
                Get.to(Screen2());
              },
              icon: Icon(Icons.next_plan_outlined),
            ),
          ],
        ),
        body: Stack(
          children: [
            Center(
              child: Text('Screen1 Body'),
            ),
            Constant.dialog(),
          ],
        ));
  }
}
