import 'package:berlitz/Widget_main/Login_Widget/mytext.dart';
import 'package:berlitz/Widget_main/MyImg.dart';
import 'package:flutter/material.dart';

class myloading extends StatelessWidget {
  const myloading({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(child: MyImg(width: 35, height: 35, url: 'assets/loadd.gif'));
  }
}
