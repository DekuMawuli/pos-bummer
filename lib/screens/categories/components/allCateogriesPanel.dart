import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pos_app/controllers/categoryController.dart';

class AllCategoriesPanel extends StatelessWidget {
  final CategoryController categoryController;
  const AllCategoriesPanel({
    Key key,
    this.categoryController,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 7,
      child: Container(
        height: double.infinity,
        child: Card(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Column(
              children: [
                Text(
                  "All Categories",
                  style: TextStyle(
                    fontSize: 30,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  height: 30,
                  child: TextFormField(
                    controller: categoryController.searchCategoryTextController,
                    onChanged: (val){
                      categoryController.searchCategory();
                    },
                    decoration: InputDecoration(
                      hintText: "Search Category Name",
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(0)),
                      contentPadding: EdgeInsets.only(left: 10),
                    ),
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Container(
                  width: double.infinity,
                  child: Obx((){
                    return DataTable(
                    columns: [
                      DataColumn(label: Text("ID #")),
                      DataColumn(label: Text("Name")),
                      DataColumn(label: Text("Actions")),
                    ],
                    rows: List.generate(categoryController.categories.length, (index){
                      var category = categoryController.categories[index];
                      return DataRow(
                        cells: [
                          DataCell(
                            Text(category.id.toString()),
                          ),
                          DataCell(
                            Text(category.name),
                          ),
                          DataCell(Row(
                            children: [
                              GestureDetector(
                                onTap: () {
                                  categoryController.getACategory(name: category.name);
                                },
                                child: Icon(
                                  Icons.edit,
                                  color: Colors.blue,
                                ),
                              ),
                              SizedBox(
                                width: 30,
                              ),
                              GestureDetector(
                                onTap: () {
                                  categoryController.deleteCategory(category: category);
                                },
                                child: Icon(
                                  Icons.delete_forever,
                                  color: Colors.red,
                                ),
                              ),
                            ],
                          )),
                        ],
                      );
                    })
                  );
                  })
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
