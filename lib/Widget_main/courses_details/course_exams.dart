import 'package:berlitz/Widget_main/Svg.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../theme/colors.dart';
import '../Login_Widget/mytext.dart';

class course_exams extends StatefulWidget {
  final String exams;
  final String examstxt;

  const course_exams({Key? key, required this.exams, required this.examstxt})
      : super(key: key);

  @override
  State<course_exams> createState() => _course_examsState();
}

class _course_examsState extends State<course_exams> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: 100,
        decoration: BoxDecoration(
          color: DesignColors.gray4,
          boxShadow: [
            BoxShadow(
              color: Colors.grey,
//                spreadRadius: 0,
              blurRadius: 1,
            )
          ],
          borderRadius: BorderRadius.circular(10),
        ),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  MyText(
                      color: DesignColors.black, text: widget.exams, size: 14)
                ],
              ),
            ),
            Row(
              //mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Svg_img(assetName: 'degree.svg'),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: MyText(
                      color: Colors.black, text: widget.examstxt, size: 19),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
