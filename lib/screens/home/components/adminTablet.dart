import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AdminTablet extends StatelessWidget {
  final Color color;
  final Color bgColor;
  final IconData iconData;
  final String text;
  final Function function;
  const AdminTablet({
    Key key, this.color, this.text, this.function, this.bgColor, this.iconData,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 1,
      child: Container(
        margin: EdgeInsets.only(right: 20),
        height: Get.mediaQuery.size.height * 0.3,
        color: bgColor,
        child: RaisedButton(
          padding: EdgeInsets.only(top: 25),
          onPressed: function,
          color: bgColor,
          child: Column(
            children: [
              Icon(
                iconData,
                size: 125,
                color: color,
              ),
              Text(
                text,
                style: Theme.of(context)
                    .textTheme
                    .headline5
                    .copyWith(color: color),
              )
            ],
          ),
        ),
      ),
    );
  }
}