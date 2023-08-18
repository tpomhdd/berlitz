import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../Screen/courses_open_details.dart';
import '../../theme/colors.dart';
import '../Login_Widget/mytext.dart';
import '../Svg.dart';

class Container_Open_Course extends StatefulWidget {
  final String start_dete;
  final String end_dete;
  final String Teacher;

  final String cost_book;
  final String cost_course;
  final String lessons;
  final String lang;
  final String level;
  final String details;

  const Container_Open_Course(
      {Key? key,
      required this.start_dete,
      required this.end_dete,
      required this.Teacher,
      required this.cost_book,
      required this.cost_course,
      required this.lang,
      required this.level,
      required this.lessons,
      required this.details})
      : super(key: key);

  @override
  State<Container_Open_Course> createState() => _Container_Open_CourseState();
}

class _Container_Open_CourseState extends State<Container_Open_Course> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Get.to(courses_open_details(
          start_dete: widget.start_dete,
          end_dete: widget.end_dete,
          Teacher: widget.Teacher,
          lang: widget.lang,
          lessons: widget.lessons,
          level: widget.level,
          details: widget.details,
        ));
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 1),
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
                          color: DesignColors.gray1),
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
                            size: 14),
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
                            text: 'Lessons  ${widget.lessons}',
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
                        child: Image.asset('assets/doller.jpg'),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(2.0),
                        child: MyText(
                            color: Colors.black,
                            text: 'cost book : ${widget.cost_book}',
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
                          color: DesignColors.gray1),
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
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(2.0),
                        child: Image.asset('assets/doller.jpg'),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(2.0),
                        child: MyText(
                            color: Colors.black,
                            text: 'cost course : ${widget.cost_course}',
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
              //border: Border.all(width: 25,color: DesignColors.gray1),
              borderRadius: BorderRadius.circular(5)),
        ),
      ),
    );
  }
}
