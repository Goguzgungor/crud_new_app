import 'package:flutter/material.dart';

class CustomTextF {
  Container mytextf(
    String hintText,
    TextInputType type,
    TextEditingController controller,
  ) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: TextField(
        decoration: InputDecoration(
          hintText: hintText,
        ),
        keyboardType: type,
        controller: controller,
      ),
    );
  }
}
