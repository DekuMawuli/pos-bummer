import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:pos_app/controllers/databaseController.dart';
import 'package:pos_app/db/db.dart';
import 'databaseController.dart';

class ProductController extends GetxController {
  final DatabaseController _databaseController = Get.find<DatabaseController>();
  RxList<Product> allProducts = RxList<Product>();
  var selectedProduct = Product().obs;
  RxList<Categorie> allCategories = RxList<Categorie>();

  // TEXT CONTROLLERS
  TextEditingController productNameController = TextEditingController();
  TextEditingController productCPController = TextEditingController();
  TextEditingController productSPController = TextEditingController();
  TextEditingController productQtyController = TextEditingController();
  final isProductAvailable = false.obs;
  final selectedCategoryID = 0.obs;


  getAllProducts(){
    allProducts.bindStream(_databaseController.posDatabase.productsDao.streamAllProducts());
  }

  getAllCategories(){
    allCategories.bindStream(_databaseController.posDatabase.categoriesDao.streamAllCategories());
  }

  addProduct()async{
    if (
      productNameController.text.isEmpty || productCPController.text.isEmpty ||
      productSPController.text.isEmpty || productQtyController.text.isEmpty 
    ){
      Get.snackbar("Error", "Please All Fields are required");
    }
    else{
      if(
        !productCPController.text.isNum || !productSPController.text.isNum || !productSPController.text.isNum
      ){
        Get.snackbar("Error", "Prices must be numbers");
      }else{
        var _product = Product(
          name: productNameController.text,
           costPrice: double.parse(productCPController.text),
            quantity: int.parse(productQtyController.text),
             sellingPrice: double.parse(productSPController.text),
        );
        try{
          await _databaseController.posDatabase.productsDao.insertProduct(_product);
          Get.snackbar("Success", "Product Added Successfully");
        }catch(e){
          Get.snackbar("Error", e.toString());
        }
      }
    }
  }

  @override
  void onInit() {
    getAllProducts();
    getAllCategories();
    super.onInit();
  }



}