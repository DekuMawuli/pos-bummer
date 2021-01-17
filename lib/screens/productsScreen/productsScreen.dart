import 'package:flutter/material.dart';
import 'package:pos_app/screens/productsScreen/components/prodcutScreenBody.dart';

class ProductScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF31367B),
        title: Text(
          "Manage Products",
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        centerTitle: true,
        elevation: 0,
      ),
      backgroundColor: Colors.yellow[100],
      body: ProductScreenBody(),
    );
  }
}
