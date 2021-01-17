import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pos_app/controllers/databaseController.dart';
import 'package:pos_app/db/db.dart';


class CategoryController extends GetxController {
  final  DatabaseController _databaseController = Get.find<DatabaseController>();
  TextEditingController catNameTextController = TextEditingController();
  TextEditingController searchCategoryTextController = TextEditingController();
  RxList<Categorie> categories = RxList<Categorie>();
  var _selectedCategory = Categorie().obs;

  Categorie get selectedCategory => _selectedCategory.value;

  addCategory(){
    String catName = catNameTextController.text;
    if(catName.isEmpty){
      Get.snackbar("Field Required", "Name Field is Required");
    }else{
      _databaseController.posDatabase.categoriesDao.insertCategory(Categorie(name: catName));
       Get.snackbar("Success", "Category Added", colorText: Colors.white, backgroundColor: Colors.green);
       catNameTextController.clear();
    }
  }

  getAllCategories(){
    categories.bindStream(_databaseController.posDatabase.categoriesDao.streamAllCategories());
  }

  getACategory({String name})async {
    try{
      Categorie selectedCat = await _databaseController.posDatabase.categoriesDao.getCategory(name);
      if(!selectedCat.isNull){
        _selectedCategory.value = selectedCat;
        catNameTextController.text = selectedCat.name;
      }
    }catch(e){
      Get.snackbar('Error', '${e}');
    }
  }

  updateCategory()async{
    try{
      _databaseController.posDatabase.categoriesDao.updateCategory(selectedCategory.copyWith(name: catNameTextController.text));
      clearField();
      Get.snackbar('Success', 'Category Updated', colorText: Colors.white, backgroundColor: Colors.green);
    }catch(e){
      Get.snackbar('Error', "${e}");
    }
  }

  deleteCategory({Categorie category}){
    try{
      _databaseController.posDatabase.categoriesDao.deleteCategory(category);
      Get.snackbar('Success', 'Category Deleted', colorText: Colors.white, backgroundColor: Colors.blue);
    }catch(e){
      Get.snackbar('Error', "${e}");
    }
  }

  searchCategory(){
    var query = searchCategoryTextController.text;
    if(query.isEmpty){
      getAllCategories();
    }else{
      categories.bindStream(_databaseController.posDatabase.categoriesDao.searchCategory(query));
    }
  }

  @override
  void onInit() {
    getAllCategories();
    super.onInit();
  }

  clearField(){
    catNameTextController.clear();
  }
  
}

