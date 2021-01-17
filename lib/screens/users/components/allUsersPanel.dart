import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pos_app/controllers/databaseController.dart';

class AllUsersPanel extends StatelessWidget {
  final DatabaseController _databaseController = Get.find<DatabaseController>();
  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 5,
      child: Container(
        margin: EdgeInsets.all(10),
        height: double.infinity,
        child: Card(
          child: Padding(
            padding: const EdgeInsets.only(left: 20, right: 20),
            child: Column(
              children: [
                Text(
                  "Employees",
                  style: TextStyle(fontSize: 30),
                ),
                Container(
                  height: Get.height * 0.05,
                  child: TextFormField(
                    controller: _databaseController.userSearchController,
                    onChanged: (val){
                      _databaseController.searchUsers();
                    },
                    decoration: InputDecoration(
                        contentPadding: EdgeInsets.only(left: 10),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(0)),
                        hintText: "Search Employee fullname "),
                  ),
                ),
                Align(
                  alignment: Alignment.topLeft,
                  child: SingleChildScrollView(
                    child: Container(
                      margin: EdgeInsets.only(top: 20),
                      width: double.infinity,
                      child: Obx(() => DataTable(
                            columns: [
                              DataColumn(
                                label: Text("User #"),
                              ),
                              DataColumn(
                                label: Text("Full Name"),
                              ),
                              DataColumn(
                                label: Text("Username"),
                              ),
                              DataColumn(
                                label: Text("Phone"),
                              ),
                              DataColumn(
                                label: Text("Admin Status"),
                              ),
                              DataColumn(
                                label: Text("Actions"),
                              ),
                            ],
                            rows: List.generate(
                                _databaseController.allUsers.toList().length ?? 0,
                                (index) {
                              var employee = _databaseController.allUsers.toList()[index];
                              return DataRow(
                                cells: [
                                  DataCell(
                                    Text(employee.id.toString()),
                                  ),
                                  DataCell(
                                    Text(employee.fullName),
                                  ),
                                  DataCell(
                                  Text(employee.username),
                                ),
                                DataCell(
                                  Text(employee.phone),
                                ),
                                DataCell(
                                  Icon(
                                    Icons.verified_user,
                                    color: employee.isAdmin
                                        ? Colors.green
                                        : Colors.red,
                                  ),
                                ),
                                DataCell(
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      InkWell(
                                        onTap: () {
                                          _databaseController.getUser(username: employee.username);
                                        },
                                        child: Container(
                                          padding: EdgeInsets.all(5),
                                          child: Icon(
                                            Icons.edit,
                                            color: Colors.blue,
                                          ),
                                        ),
                                      ),
                                      InkWell(
                                        onTap: () {
                                          _databaseController.deleteUser(user: employee);
                                        },
                                        child: Container(
                                          padding: EdgeInsets.all(5),
                                          child: Icon(
                                            Icons.delete_forever,
                                            color: Colors.red,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            );
                          })),
                    ),
                  ),
                )
                )
              ],
              
            ),
          ),
        ),
      ),
    );
  }
}
