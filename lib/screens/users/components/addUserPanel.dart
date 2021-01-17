import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pos_app/controllers/databaseController.dart';

class AddUserPanel extends StatelessWidget {
  final DatabaseController _databaseController = Get.find<DatabaseController>();
  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 2,
      child: Container(
        margin: EdgeInsets.all(10),
        height: double.infinity,
        child: Card(
          child: Padding(
            padding: const EdgeInsets.only(top: 10, left: 20, right: 20),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Text(
                    "Add / Edit Employee",
                    textAlign: TextAlign.center,
                    style: Theme.of(context)
                        .textTheme
                        .headline4
                        .copyWith(color: Colors.black),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  TextFormField(
                    controller: _databaseController.fullNameController,
                    keyboardType: TextInputType.name,
                    decoration: InputDecoration(hintText: "Enter Full Name"),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  TextFormField(
                    controller: _databaseController.usernameController,
                    keyboardType: TextInputType.name,
                    decoration: InputDecoration(hintText: "Enter Username"),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  TextFormField(
                    controller: _databaseController.phoneNumberController,
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                      hintText: "Enter Phone",
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Administrator:",
                        style: TextStyle(
                          fontSize: 18,
                        ),
                      ),
                      Obx(
                        () => Checkbox(
                          value: _databaseController.isAdmin.value,
                          onChanged: (val) {
                            _databaseController.isAdmin.toggle();
                          },
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 50,
                  ),
                  Container(
                    width: double.infinity,
                    height: Get.mediaQuery.size.height * 0.06,
                    child: RaisedButton(
                      onPressed: () {
                        _databaseController.addUser();
                      },
                      textColor: Colors.white,
                      color: Colors.green,
                      child: Text(
                        "Add Employee",
                        style: TextStyle(fontSize: 18),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    width: double.infinity,
                    height: Get.mediaQuery.size.height * 0.06,
                    child: RaisedButton(
                      textColor: Colors.white,
                      onPressed: () {
                        _databaseController.editUser();
                      },
                      color: Colors.blueGrey[900],
                      child: Text(
                        "Update Employee",
                        style: TextStyle(fontSize: 18),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    width: double.infinity,
                    height: Get.mediaQuery.size.height * 0.06,
                    child: RaisedButton(
                      textColor: Colors.white,
                      onPressed: () {
                        _databaseController.clearUserControllers();
                      },
                      color: Colors.red[900],
                      child: Text(
                        "Clear FIelds",
                        style: TextStyle(fontSize: 18),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
