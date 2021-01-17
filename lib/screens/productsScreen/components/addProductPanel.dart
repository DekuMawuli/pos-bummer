import 'package:flutter/material.dart';

class AddProductPanel extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 2,
      child: Container(
        padding: EdgeInsets.all(10),
        height: double.infinity,
        child: Card(
          child: Padding(
            padding: const EdgeInsets.only(top: 10, left: 20, right: 20),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Text(
                    "Add / Edit Product",
                    textAlign: TextAlign.center,
                    style: Theme.of(context)
                        .textTheme
                        .headline4
                        .copyWith(color: Colors.black),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  TextField(
                    decoration: InputDecoration(hintText: "Product Name"),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  TextField(
                    decoration: InputDecoration(hintText: "Cost Price"),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  TextField(
                    decoration: InputDecoration(hintText: "selling Price"),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  TextField(
                    decoration: InputDecoration(hintText: "Quantity"),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Available",
                        style: TextStyle(
                          fontSize: 18,
                        ),
                      ),
                      Checkbox(
                        value: false,
                        onChanged: (val) {},
                      )
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    "Drug Type",
                    textAlign: TextAlign.left,
                  ),
                  DropdownButtonFormField(
                    value: 2,
                    hint: Text("Category"),
                    onChanged: (val) {
                      print(val.toString());
                    },
                    items: [
                      DropdownMenuItem(
                        value: 0,
                        child: Text("1"),
                      ),
                      DropdownMenuItem(
                        value: 1,
                        child: Text("Second Option"),
                      ),
                      DropdownMenuItem(
                        value: 2,
                        child: Text("Third Option"),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: [
                      Expanded(
                        flex: 1,
                        child: Container(
                          margin: EdgeInsets.only(right: 15),
                          height: 40,
                          child: RaisedButton.icon(
                            onPressed: () {},
                            icon: Icon(Icons.add),
                            color: Colors.green,
                            textColor: Colors.white,
                            label: Text("Add"),
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 1,
                        child: Container(
                          height: 40,
                          child: RaisedButton.icon(
                            onPressed: () {},
                            color: Colors.blueGrey[900],
                            textColor: Colors.white,
                            icon: Icon(Icons.update),
                            label: Text("Update"),
                          ),
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    height: 40,
                    width: double.infinity,
                    child: RaisedButton.icon(
                      onPressed: () {},
                      color: Colors.red[900],
                      textColor: Colors.white,
                      icon: Icon(Icons.clear_all),
                      label: Text("Clear Fields"),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
