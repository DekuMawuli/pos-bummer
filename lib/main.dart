import 'dart:ffi';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pos_app/controllers/databaseController.dart';
import 'package:pos_app/screens/authScreens/authWrapper.dart';
import 'package:sqlite3/open.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  open.overrideFor(OperatingSystem.windows, _openWindows);
  Get.put(DatabaseController());
  runApp(MyApp());
}

DynamicLibrary _openWindows() {
   return DynamicLibrary.open(r'C:\Users\User\flutterDesktopProjects\pos_app\lib\sqlite3.dll');
}


class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.grey,
      ),
      home: AuthWrapper(),
    );
  }
}
