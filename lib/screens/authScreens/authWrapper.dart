import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pos_app/controllers/databaseController.dart';
import 'package:pos_app/screens/home/home.dart';

import 'loginScreen.dart';

class AuthWrapper extends StatelessWidget {
  final _databaseController = Get.find<DatabaseController>();
  @override
  Widget build(BuildContext context) {
    return Obx((){
      if(_databaseController.currentUser.isNull){
        return LoginScreen();
      }else{
        return Dashboard();
      }
    });
  }
}