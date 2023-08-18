import 'package:flutter/material.dart'; //courses_open_details
import 'package:berlitz/Widget_main/Login_Widget/mytext.dart';
import 'package:berlitz/Widget_main/buttom_bar.dart';
import 'package:flutter/material.dart';

import '../Widget_main/Svg.dart';
import '../Widget_main/courses_details/Container_Course.dart';
import '../Widget_main/courses_details/Contiainer_Lessons.dart';
import '../Widget_main/courses_details/course_container.dart';
import '../Widget_main/courses_details/course_exams.dart';
import '../theme/colors.dart';

class courses_open_details extends StatefulWidget {
  final String start_dete;
  final String end_dete;
  final String Teacher;

  final String lang;

  final String lessons;

  final String level;
  final String details;

  const courses_open_details(
      {Key? key,
      required this.start_dete,
      required this.end_dete,
      required this.Teacher,
      required this.lang,
      required this.lessons,
      required this.level,
      required this.details})
      : super(key: key);

  @override
  State<courses_open_details> createState() => _courses_open_detailsState();
}

class _courses_open_detailsState extends State<courses_open_details> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: DesignColors.gray,
      bottomNavigationBar: buttom_bar(
        indexx: 1,
      ),
      appBar: AppBar(
        centerTitle: true,
        leading: InkWell(
          onTap: (){
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
      body: ListView(children: [
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
      ]),
    );
  }
}
