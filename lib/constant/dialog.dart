import 'package:firebase_dialog_demo/controller/home_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
class Constant{
  static HomeController controller = Get.find();

  static Widget dialog(){
    return Obx(() => controller.status.value
        ? AlertDialog(
      title: Text('Status'),
      content: Text('Status is true'),
      actions: [
        FlatButton(
            onPressed: () {
              controller.collection
                  .doc('abTN6El3JH2c2uLDnLet')
                  .update({'status': false});
            },
            child: Text('Change Status'))
      ],
    )
        : SizedBox());
  }
}