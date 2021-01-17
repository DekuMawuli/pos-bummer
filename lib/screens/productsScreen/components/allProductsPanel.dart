import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AllProductsPanel extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 7,
      child: Container(
        padding: EdgeInsets.all(10),
        child: Card(
          child: Padding(
            padding: const EdgeInsets.only(right: 20, left: 20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  "All Products",
                  style: TextStyle(
                    fontSize: 30,
                  ),
                ),
                Container(
                  height: Get.height * 0.05,
                  child: TextField(
                    decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(0),
                        ),
                        contentPadding: EdgeInsets.only(left: 10),
                        hintText: "Search Product Name"),
                  ),
                ),
                Align(
                  alignment: Alignment.topLeft,
                  child: Container(
                    width: double.infinity,
                    child: SingleChildScrollView(
                      
                      child: DataTable(
                        columns: [
                          DataColumn(
                            label: Text("ID#"),
                          ),
                          DataColumn(
                            label: Text("Name"),
                          ),
                          DataColumn(
                            label: Text("QTY"),
                          ),
                          DataColumn(
                            label: Text("C.P. (GHS)"),
                          ),
                          DataColumn(
                            label: Text("S.P. (GHS)"),
                          ),
                          DataColumn(
                            label: Text("Date Added"),
                          ),
                          DataColumn(label: Text("Available"))
                        ],
                        rows: [
                          DataRow(
                            cells: [
                              DataCell(
                                Text("1"),
                              ),
                              DataCell(
                                Text("Milo"),
                              ),
                              DataCell(
                                Text("100"),
                              ),
                              DataCell(
                                Text("40.00"),
                              ),
                              DataCell(
                                Text("45.00"),
                              ),
                              DataCell(
                                Text(DateTime.now().toString()),
                              ),
                              DataCell(
                                Icon(
                                  Icons.verified,
                                  color: Colors.green,
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
