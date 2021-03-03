import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:firebase_dialog_demo/screen/screen2.dart';

class Screen1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Screen1'),
          actions: [
            IconButton(
              onPressed: (){
                Get.to(Screen2());
              },
              icon: Icon(Icons.next_plan_outlined),
            ),
          ],
        ),
        body: Center(
          child: Text('Screen1 Body'),
        ));
  }
}
