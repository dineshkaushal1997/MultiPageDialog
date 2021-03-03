import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:firebase_dialog_demo/screen/screen4.dart';
class Screen3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Screen3'),
          actions: [
            IconButton(
              onPressed: (){
                Get.to(Screen4());

              },
              icon: Icon(Icons.next_plan_outlined),
            ),
          ],
        ),
        body: Center(
          child: Text('Screen3 Body'),
        ));
  }
}
