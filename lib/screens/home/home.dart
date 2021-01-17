import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pos_app/controllers/databaseController.dart';
import 'components/dashboardBody.dart';

class Dashboard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final _databaseController = Get.find<DatabaseController>();
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xC211C234),
        elevation: 0,
        toolbarHeight: 60,
        title: Text(
          "Dashboard",
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
        actions: [
          GestureDetector(
            onTap: () {
              _databaseController.logoutUser();
            },
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: Center(
                child: Text(
                  "Logout",
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w900,
                  ),
                ),
              ),
              height: double.infinity,
              color: Colors.red,
            ),
          ),
        ],
      ),
      backgroundColor: Colors.yellow[100],
      body: DashboardBody(),
    );
  }
}
