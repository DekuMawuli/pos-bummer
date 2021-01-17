import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MyDialog extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Dialog(
      child: Container(
        color: Colors.white,
        width: Get.width * 0.3,
        height: Get.height * 0.6,
        child: Column(
          children: [
            Text(
              "AlphaCorp.Inc",
              style: Theme.of(context).textTheme.headline3.copyWith(
                    color: Colors.black,
                  ),
            ),
            Divider(
              indent: 100,
              endIndent: 100,
              color: Colors.black87,
            ),
            Text("Email: alphacorp@gmail.com")
          ],
        ),
      ),
    );
  }
}
