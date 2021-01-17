import 'package:flutter/material.dart';
import 'package:pos_app/controllers/categoryController.dart';

class AddCategoryPanel extends StatelessWidget {
  final CategoryController categoryController;
  const AddCategoryPanel({
    Key key,
    this.categoryController,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 2,
      child: Container(
        height: double.infinity,
        child: Card(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Column(
              children: [
                Text(
                  "Add / Modify Category",
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 30),
                ),
                SizedBox(
                  height: 20,
                ),
                TextField(
                  controller: categoryController.catNameTextController,
                  decoration: InputDecoration(hintText: "Category Name"),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  width: double.infinity,
                  height: 50,
                  child: RaisedButton(
                    onPressed: () {
                      categoryController.addCategory();
                    },
                    textColor: Colors.white,
                    child: Text(
                      "Add",
                      style: TextStyle(fontSize: 20),
                    ),
                    color: Colors.green,
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  width: double.infinity,
                  height: 50,
                  child: RaisedButton(
                    onPressed: () {
                      categoryController.updateCategory();
                    },
                    textColor: Colors.white,
                    child: Text(
                      "Update",
                      style: TextStyle(fontSize: 20),
                    ),
                    color: Colors.blueGrey[900],
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  width: double.infinity,
                  height: 50,
                  child: RaisedButton(
                    onPressed: () {},
                    textColor: Colors.white,
                    child: Text(
                      "Clear Field",
                      style: TextStyle(
                        fontSize: 20
                      ),
                    ),
                    color: Colors.red,
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
