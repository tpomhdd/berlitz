import 'package:berlitz/Screen/courses_details.dart';
import 'package:berlitz/Widget_main/Svg.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';

import '../../theme/colors.dart';
import '../Login_Widget/mytext.dart';

class Container_Course extends StatefulWidget {
  final String start_dete;
  final String end_dete;
  final String Teacher;

  final String lang;
  final String id;
  final String details;

  final String lessons;

  final String lessons2;

  final String level;
  final Color Color_Course;

  const Container_Course(
      {Key? key,
      required this.start_dete,
      required this.end_dete,
      required this.Teacher,
      required this.lang,
      required this.lessons,
      required this.level,
      required this.details,
      required this.id,
      required this.lessons2,
      required this.Color_Course})
      : super(key: key);

  @override
  State<Container_Course> createState() => _Container_CourseState();
}

class _Container_CourseState extends State<Container_Course> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Get.to(courses_details(
          start_dete: widget.start_dete,
          end_dete: widget.end_dete,
          id: widget.id,
          Teacher: widget.Teacher,
          lang: widget.lang,
          lessons: widget.lessons,
          level: widget.level,
          details: widget.details,
          Lesons: widget.lessons2,
        ));
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Container(
          margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 22),
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                  child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: MyText(
                          text: '${widget.level}/${widget.lang}',
                          size: 12,
                          color: DesignColors.black,
                        ),
                      ),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: widget.Color_Course),
                    ),
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(2.0),
                        child: Svg_img(assetName: 'calendar.svg'),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(2.0),
                        child: MyText(
                            color: Colors.black,
                            text: 'Start ${widget.start_dete}',
                            size: 12),
                      )
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(2.0),
                        child: Svg_img(assetName: 'timer.svg'),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(2.0),
                        child: MyText(
                            color: Colors.black,
                            text: 'Lessons: ${widget.lessons}',
                            size: 12),
                      )
                    ],
                  ),
                ],
              )),
              Expanded(
                  child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      child: Padding(
                        padding: const EdgeInsets.all(9.0),
                        child: MyText(
                          text: 'on going course',
                          size: 12,
                          color: DesignColors.black,
                        ),
                      ),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: widget.Color_Course),
                    ),
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(2.0),
                        child: Svg_img(assetName: 'calendar.svg'),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(2.0),
                        child: MyText(
                            color: Colors.black,
                            text: 'End ${widget.end_dete}',
                            size: 12),
                      )
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(2.0),
                        child: Svg_img(assetName: 'degree.svg'),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(2.0),
                        child: MyText(
                            color: Colors.black,
                            text: 'Teacher : ${widget.Teacher}',
                            size: 12),
                      )
                    ],
                  ),
                ],
              )),
            ],
          ),
          decoration: BoxDecoration(
              color: DesignColors.white,
              border: Border.all(width: 12, color: DesignColors.gray1),
              borderRadius: BorderRadius.circular(5)),
        ),
      ),
    );

    ;
  }
}
