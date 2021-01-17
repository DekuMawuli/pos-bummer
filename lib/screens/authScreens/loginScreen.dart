import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pos_app/controllers/databaseController.dart';
import 'package:pos_app/screens/home/home.dart';

class LoginScreen extends StatelessWidget {
  final  _databaseController = Get.find<DatabaseController>();
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      body: Column(
        children: [
          SizedBox(
            height: 80,
          ),
          Center(
            child: Obx((){
              if (_databaseController.currentUser == null){
                return Text(
                  "Funky Pharma System",
                  style: Theme.of(context).textTheme.headline2.copyWith(
                        color: Colors.white,
                      ),
                );
              }else{
                return Text(
                  "Welcome ${_databaseController.currentUser.fullName}",
                  style: Theme.of(context).textTheme.headline2.copyWith(
                        color: Colors.white,
                      ),
                );
              }
            })
          ),
          SizedBox(
            height: 50,
          ),
          Container(
            padding: EdgeInsets.only(top: 30, bottom: 10, left: 40, right: 40),
            height: Get.mediaQuery.size.height * 0.55,
            color: Colors.white,
            width: Get.mediaQuery.size.width * 0.4,
            child: Column(
              children: [
                Center(
                  child: Text(
                    "Login Here",
                    textAlign: TextAlign.center,
                    style: Theme.of(context).textTheme.headline3,
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                TextFormField(
                  controller: _databaseController.usernameController,
                  decoration: InputDecoration(
                    hintText: "Username",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                TextFormField(
                  controller: _databaseController.passwordController,
                  obscureText: true,
                  decoration: InputDecoration(
                    hintText: "Password",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.green,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  height: 60,
                  child: RaisedButton(
                    onPressed: () {
                      _databaseController.loginUser();
                    },
                    child: Text("Grant Access"),
                    color: Colors.green,
                    textColor: Colors.white,
                    elevation: 5,
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
