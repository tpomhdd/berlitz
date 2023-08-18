import 'package:berlitz/Widget_Response/exams.dart';
import 'package:berlitz/Widget_main/Login_Widget/mytext.dart';
import 'package:berlitz/Widget_main/buttom_bar.dart';
import 'package:flutter/material.dart';

import '../Widget_Response/Contiainer_Lessons_Response.dart';
import '../Widget_main/Svg.dart';
import '../Widget_main/courses_details/Container_Course.dart';
import '../Widget_main/courses_details/Contiainer_Lessons.dart';
import '../Widget_main/courses_details/course_container.dart';
import '../Widget_main/courses_details/course_exams.dart';
import '../theme/colors.dart';

class courses_details extends StatefulWidget {
  final String start_dete;
  final String end_dete;
  final String Teacher;

  final String lang;

  final String lessons;
  final String id;

  final String level;
  final String details;
  final String Lesons;

  const courses_details(
      {Key? key,
      required this.start_dete,
      required this.end_dete,
      required this.Teacher,
      required this.lang,
      required this.lessons,
      required this.level,
      required this.details,
      required this.id,
      required this.Lesons})
      : super(key: key);

  @override
  State<courses_details> createState() => _courses_detailsState();
}

class _courses_detailsState extends State<courses_details> {
  @override
  Widget build(BuildContext context) {
    setState(() {});
    return Scaffold(
      backgroundColor: DesignColors.gray,
      appBar: AppBar(
        centerTitle: true,
        leading: InkWell(
          onTap: () {
            Navigator.pop(context);
          },
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Svg_img(assetName: 'back.svg'),
          ),
        ),
        backgroundColor: DesignColors.gray,
        title: MyText(
          color: Colors.black,
          text: 'Courses details',
          size: 14,
          fontWeight: FontWeight.w500,
        ),
      ),
      body: ListView(
        children: [
          Container_Course(
            start_dete: widget.start_dete,
            end_dete: widget.end_dete,
            Teacher: widget.Teacher,
            lang: widget.lang,
            lessons: widget.lessons,
            level: widget.level,
          ),
          course_container(
            details: widget.details,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
                alignment: Alignment.center,
                child: MyText(
                  color: Colors.black,
                  text: 'Course exams',
                  size: 14,
                  fontWeight: FontWeight.w700,
                )),
          ),
          Container(
              height: 600,
              child: exams(
                id: widget.id,
              )),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
                alignment: Alignment.center,
                child: MyText(
                  color: Colors.black,
                  text: widget.Lesons,
                  size: 14,
                  fontWeight: FontWeight.w700,
                )),
          ),
          SizedBox(
              height: 300,
              child: Contiainer_Lessons_Response(
                id: widget.id,
              ))
        ],
      ),
    );
  }
}
