import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:password/password.dart';
import 'package:pos_app/db/db.dart';

class DatabaseController extends GetxService {
  POSDatabase _posDatabase = POSDatabase();
  Rx<User> _currentUser = User().obs;
  POSDatabase get posDatabase => _posDatabase;
  User get currentUser => _currentUser.value;
  RxList<User> _allUsers = RxList<User>();

  List<User> get allUsers => _allUsers.toList();
  var _selectedUser = User().obs;
  User get selectedUser => _selectedUser.value;

  var _isAdmin = false.obs;
  RxBool get isAdmin => _isAdmin;

// --------------- USER RELATED CONTROLLERS START HERE ---------
  TextEditingController usernameController = TextEditingController();
  TextEditingController fullNameController = TextEditingController();
  TextEditingController phoneNumberController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController userSearchController = TextEditingController();
  // -------- USER RELATED CONTROLLERS ---------------------------

  
  TextEditingController productSearchController = TextEditingController();
  TextEditingController cartSearchController = TextEditingController();

  @override
  void onInit() {
    _currentUser.bindStream(posDatabase.usersDao.getCurrentUser());
    getAllUsers();
    super.onInit();
  }

  loginUser() async {
    if (usernameController.text.isEmpty || passwordController.text.isEmpty) {
      Get.snackbar("Fields Required", "Enter All Fields");
    } else {
      var user =
          await _posDatabase.usersDao.getUser(usernameController.text) ?? null;
      if (user.isNull) {
        Get.snackbar("Invalid Credentials",
            "Please check your credentials and try again");
      } else {
        if (Password.verify(passwordController.text, user.password)) {
          try {
            _posDatabase.usersDao.updateUser(user.copyWith(userLoggedIn: true));
            usernameController.clear();
            passwordController.clear();
          } catch (e) {
            print(e.toString());
          }
        } else {
          Get.snackbar("Invalid Credentials",
              "Please check your credentials and try again");
        }
      }
    }
  }

  getAllUsers() {
    _allUsers.bindStream(_posDatabase.usersDao.getStreamEmployees());
  }

  logoutUser() async {
    try {
      _posDatabase.usersDao
          .updateUser(currentUser.copyWith(userLoggedIn: false));
    } catch (e) {
      print(e.toString());
    }
  }

  getUser({String username}) async {
    var user = await _posDatabase.usersDao.getUser(username);
    if (!user.isNull) {
      _selectedUser.value = user;
      fullNameController.text = user.fullName;
      usernameController.text = user.username;
      phoneNumberController.text = user.phone;
      isAdmin.value = user.isAdmin;
    }
  }

  clearUserControllers() {
    fullNameController.clear();
    usernameController.clear();
    phoneNumberController.clear();
    passwordController.clear();
    isAdmin.value = false;
  }

  addUser() {
    if (fullNameController.text.isEmpty ||
        usernameController.text.isEmpty ||
        !phoneNumberController.text.isNum ||
        phoneNumberController.text.isEmpty) {
      Get.snackbar("Error", "Fields are required");
    } else {
      String myHashedPassword = Password.hash("2020", PBKDF2());
      User user = User(
        fullName: fullNameController.text,
        isAdmin: isAdmin.value,
        phone: phoneNumberController.text,
        username: usernameController.text,
        password: myHashedPassword,
      );
      try {
        _posDatabase.usersDao.insertUser(user);
        Get.snackbar("Success", "User Added Successfully", backgroundColor: Colors.green, colorText: Colors.white);
        clearUserControllers();
      } catch (e) {
        Get.snackbar("Error", e.toString());
      }
    }
  }

  editUser()async{
    if (fullNameController.text.isEmpty ||
        usernameController.text.isEmpty ||
        !phoneNumberController.text.isNum ||
        phoneNumberController.text.isEmpty) {
      Get.snackbar("Error", "Fields are required");
    }else{
      try{
        _posDatabase.usersDao.updateUser(selectedUser.copyWith(
          fullName: fullNameController.text,
          isAdmin: isAdmin.value,
          phone: phoneNumberController.text,
          username: usernameController.text));
          clearUserControllers();
           Get.snackbar("Success", "User Updated Successfully", backgroundColor: Colors.blue, colorText: Colors.white);
          //  var newUsers = await _posDatabase.usersDao.getEmployees();
          //  _allUsers = newUsers.obs
      }catch(e){
        Get.snackbar("Error", e.toString());
      }
    }
  }

  deleteUser({User user}){
    try{
      _posDatabase.usersDao.deleteUser(user);
      Get.snackbar("Success", "User Removed Successfully", backgroundColor: Colors.blue, colorText: Colors.white);

    }catch(e){
      Get.snackbar("Error", e.toString());
    }
  }

  searchUsers(){
    if(userSearchController.text.isEmpty){
      _allUsers.bindStream(_posDatabase.usersDao.getStreamEmployees());
    }else{
      _allUsers.bindStream(_posDatabase.usersDao.searchUsers(userSearchController.text));
    }
  }
}
