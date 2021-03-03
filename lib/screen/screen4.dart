import 'package:firebase_dialog_demo/constant/dialog.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:firebase_dialog_demo/screen/screen2.dart';

class Screen4 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Screen4'),
          // actions: [
          //   IconButton(
          //     onPressed: () {
          //       Get.back();
          //     },
          //     icon: Icon(Icons.settings_backup_restore),
          //   ),
          // ],
        ),
        body: Stack(
          children: [
            Center(
              child: Text('Screen4 Body'),
            ),
            Constant.dialog(),
          ],
        ));
  }
}
