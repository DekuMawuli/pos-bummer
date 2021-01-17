import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'adminTablets.dart';

class DashboardBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: Get.width * 0.08),
      child: AdminTablets(),
    );
  }
}
