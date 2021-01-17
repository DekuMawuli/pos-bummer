import 'package:flutter/material.dart';
import 'package:pos_app/screens/users/components/usersBody.dart';

class UsersScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF435534),
        elevation: 0,
        title: Text(
          "Manage Employees",
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        centerTitle: true,
      ),
      backgroundColor: Colors.yellow[100],
      body: UsersBody(),
    );
  }
}
