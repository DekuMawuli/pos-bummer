import 'package:flutter/material.dart';

import 'addProductPanel.dart';
import 'allProductsPanel.dart';

class ProductScreenBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        AddProductPanel(),
        AllProductsPanel(),
      ],
    );
  }
}

