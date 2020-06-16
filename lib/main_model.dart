import 'package:flutter/material.dart';

class MainModel extends ChangeNotifier{
  String text = "rattslのフラタベンきゅ";

  void changeText(){
    text = 'ボタン押したよ!!!!!!!!!!!!';
    notifyListeners();
  }
}