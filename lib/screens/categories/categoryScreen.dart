import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pos_app/controllers/categoryController.dart';

import 'components/addCategoryPanel.dart';
import 'components/allCateogriesPanel.dart';

class CategoryScreen extends StatelessWidget {
  final CategoryController _categoryController = Get.put(CategoryController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: Text(
          "Product Categories",
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
        backgroundColor: Color(0xFF637E02),
      ),
      backgroundColor: Colors.yellow[100],
      body: Row(
        children: [
          AddCategoryPanel(categoryController: _categoryController,),
          AllCategoriesPanel(categoryController: _categoryController,)
        ],
      ),
    );
  }
}



