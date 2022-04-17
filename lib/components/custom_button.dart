import 'package:flutter/material.dart';

class MyButton {
  Container customButton(BuildContext context) {
    return Container(
      width: 100,
      height: 50,
      child: Center(child: Text('Submit')),
      decoration: BoxDecoration(color: Theme.of(context).colorScheme.primary, borderRadius: BorderRadius.circular(10)),//Color sheme tanımlı olmazsa maviyi alacağını biliyorum hata vermeyecek
    );
  }
}
