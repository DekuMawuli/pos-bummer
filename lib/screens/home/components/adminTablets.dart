import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pos_app/screens/categories/categoryScreen.dart';
import 'package:pos_app/screens/home/components/aboutDialog.dart';
import 'package:pos_app/screens/productsScreen/productsScreen.dart';
import 'package:pos_app/screens/users/usersScreen.dart';

import 'adminTablet.dart';

class AdminTablets extends StatelessWidget {
  const AdminTablets({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Row(
          children: [
            AdminTablet(
              iconData: Icons.person_add,
              color: Colors.yellow[100],
              bgColor: Color(0xFF435534),
              text: "Manage Employees",
              function: () {
                Get.to(UsersScreen(), transition: Transition.leftToRightWithFade);
              },
            ),
            AdminTablet(
              iconData: Icons.medical_services_outlined,
              color: Colors.yellow[100],
              bgColor: Color(0xFF31367B),
              text: "Manage Products",
              function: () {
                Get.to(ProductScreen(), transition: Transition.leftToRightWithFade);
              },
            ),
            AdminTablet(
              iconData: Icons.monetization_on_outlined,
              color: Colors.yellow[100],
              bgColor: Color(0xFF026B7E),
              text: "Financial Reports",
              function: () {
                print("Go All Users Page");
              },
            ),
            AdminTablet(
              iconData: Icons.point_of_sale_outlined,
              color: Colors.yellow[100],
              bgColor: Color(0xFF7E0202),
              text: "Point of Sale",
              function: () {
                print("Go All Users Page");
              },
            ),
          ],
        ),
        SizedBox(
          height: 20,
        ),
        Row(
          children: [
            AdminTablet(
              iconData: Icons.person,
              color: Colors.yellow[100],
              bgColor: Color(0xFF07504C),
              text: "Profile",
              function: () {
                print("Go All Users Page");
              },
            ),
            AdminTablet(
              iconData: Icons.category,
              color: Colors.yellow[100],
              bgColor: Color(0xFF637E02),
              text: "Product Categories",
              function: () {
                Get.to(CategoryScreen());
              },
            ),
            AdminTablet(
              iconData: Icons.attribution_outlined,
              color: Colors.yellow[100],
              bgColor: Color(0xC211C234),
              text: "About Developers",
              function: () {
                Get.dialog(MyDialog());
              },
            ),
          ],
        ),
      ],
    );
  }
}
