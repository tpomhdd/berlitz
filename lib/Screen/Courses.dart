import 'package:berlitz/Widget_main/Home_Widget/Container_Course.dart';
import 'package:berlitz/Widget_main/getuser.dart';
import 'package:flutter/material.dart';

import '../Client/Client.dart';
import '../Model/ActiveCourses.dart';
import '../Widget_Response/Courses_Detailes.dart';
import '../Widget_main/courses_details/Course_Details.dart';
import '../Widget_main/Login_Widget/mytext.dart';
import '../Widget_main/buttom_bar.dart';
import '../Widget_main/courses_details/Contiainer_Lessons.dart';
import '../Widget_main/courses_details/Future_Course.dart';
import '../Widget_main/search.dart';
import '../theme/colors.dart';

class Courses extends StatefulWidget {
  const Courses({Key? key}) : super(key: key);

  @override
  State<Courses> createState() => _CoursesState();
}

class _CoursesState extends State<Courses> {
  @override
  Widget build(BuildContext context) {
    setState(() {});
    return Scaffold(
      bottomNavigationBar: buttom_bar(
        indexx: 1,
      ),
      backgroundColor: DesignColors.gray,
      appBar: AppBar(
        title: getuser(),
        leading: Image.asset("assets/svgs/tt.png"),
        backgroundColor: DesignColors.gray,
      ),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Container(height: 500, child: Course_Response()),
          )
        ],
      ),
    );
  }
}
