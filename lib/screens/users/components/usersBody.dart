import 'package:flutter/material.dart';
import 'addUserPanel.dart';
import 'allUsersPanel.dart';

class UsersBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        AddUserPanel(),
        AllUsersPanel()
      ],
    );
  }
}

