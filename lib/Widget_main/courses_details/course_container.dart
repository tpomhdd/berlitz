import 'package:berlitz/Widget_main/Login_Widget/mytext.dart';
import 'package:berlitz/Widget_main/Svg.dart';
import 'package:berlitz/theme/colors.dart';
import 'package:flutter/material.dart';

class course_container extends StatefulWidget {
  final String details;

  const course_container({Key? key, required this.details}) : super(key: key);

  @override
  State<course_container> createState() => _course_containerState();
}

class _course_containerState extends State<course_container> {
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
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Svg_img(assetName: 'courses_active.svg'),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: MyText(
                      color: DesignColors.primaryColor,
                      text: 'Course details',
                      size: 14,
                      fontWeight: FontWeight.w700,
                    ),
                  )
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                MyText(color: Colors.black, text: widget.details, size: 14)
              ],
            )
          ],
        ),
      ),
    );
  }
}
