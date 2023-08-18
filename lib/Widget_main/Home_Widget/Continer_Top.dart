import 'package:berlitz/Widget_main/Login_Widget/mytext.dart';
import 'package:berlitz/theme/colors.dart';
import 'package:flutter/material.dart';

class Container_Top extends StatelessWidget {
  const Container_Top({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 10),
      child: Container(
        height: 150,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(flex: 1, child: Image.asset('assets/imgtop.jpg')),
            Expanded(
                flex: 3,
                child: MyText(
                  color: Colors.white,
                  text: 'you are in 1A level in Arabic language now Great jop!',
                  size: 18,
                  fontWeight: FontWeight.w600,
                ))
          ],
        ),
        decoration: BoxDecoration(
            color: DesignColors.primaryColor,
            borderRadius: BorderRadius.circular(5)),
      ),
    );
  }
}
