import 'dart:async';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  RxBool status = false.obs;
  StreamSubscription subscription;
  CollectionReference collection =
      FirebaseFirestore.instance.collection('Status');

  @override
  void onInit() {
    fetchData();
    super.onInit();
  }

  fetchData() {
    collection.doc('abTN6El3JH2c2uLDnLet').snapshots().listen((event) {
      print('colling ${status}');
      status.value = event.get('status');
      print('colling after${status}');

      // update();
    });
  }


  @override
  void dispose() {
    subscription?.cancel();
    super.dispose();
  }
}
