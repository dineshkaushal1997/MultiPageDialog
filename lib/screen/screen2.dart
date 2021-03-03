import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:firebase_dialog_demo/screen/screen3.dart';

class Screen2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Screen2'),
          actions: [
            IconButton(
              onPressed: (){
                Get.to(Screen3());

              },
              icon: Icon(Icons.next_plan_outlined),
            ),
          ],
        ),
        body: Center(
          child: Text('Screen2 Body'),
        ));
  }
}
