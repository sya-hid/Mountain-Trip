import 'package:flutter/material.dart';
import 'package:mountain_trip/theme.dart';

AppBar buildAppBar({bool isTransparent = false, String title}) {
  return AppBar(
    backgroundColor: isTransparent ? Colors.transparent : Colors.white,
    elevation: 0,
    title: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          isTransparent ? "" : title,
          style: TextStyle(color: kTextColor, fontWeight: FontWeight.bold),
        ),
      ],
    ),
    leading: IconButton(
      icon: Icon(
        Icons.menu,
        color: kIconColor,
      ),
      onPressed: () {},
    ),
    actions: [
      IconButton(
        icon: Icon(
          Icons.search_outlined,
          color: kIconColor,
        ),
        onPressed: () {},
      ),
      IconButton(
          icon: Icon(
            Icons.tune_outlined,
            color: kIconColor,
          ),
          onPressed: () {})
    ],
  );
}
