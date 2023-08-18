import 'package:berlitz/Widget_main/Svg.dart';
import 'package:flutter/material.dart';

import '../../theme/colors.dart';
import '../Login_Widget/mytext.dart';

class Container_Course extends StatefulWidget {
  final String start_dete;
  final String end_dete;
  final String Teacher;

  final String lang;

  final String lessons;

  final String level;

  const Container_Course(
      {Key? key,
      required this.start_dete,
      required this.end_dete,
      required this.Teacher,
      required this.lang,
      required this.lessons,
      required this.level})
      : super(key: key);

  @override
  State<Container_Course> createState() => _Container_CourseState();
}

class _Container_CourseState extends State<Container_Course> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Container(
        alignment: Alignment.center,
        margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 22),
        height: 130,
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        width: 200,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(right: 5, left: 5),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    alignment: Alignment.center,
                    width: MediaQuery.of(context).size.width / 1.5,
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
                        color: DesignColors.yellow2),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                      child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(2.0),
                            child: Svg_img(
                                assetName: 'calendar.svg',
                                mycolor: Colors.white),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(2.0),
                            child: MyText(
                                color: Colors.white,
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
                            child: Svg_img(
                                assetName: 'timer.svg', mycolor: Colors.white),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(2.0),
                            child: MyText(
                                color: Colors.white,
                                text: 'Lessons :${widget.lessons}',
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
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(2.0),
                            child: Svg_img(
                                assetName: 'calendar.svg',
                                mycolor: Colors.white),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(2.0),
                            child: MyText(
                                color: Colors.white,
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
                            child: Svg_img(
                              assetName: 'degree.svg',
                              mycolor: Colors.white,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(2.0),
                            child: MyText(
                                color: Colors.white,
                                text: 'Teacher : ${widget.Teacher}',
                                size: 12),
                          )
                        ],
                      ),
                    ],
                  )),
                ],
              ),
            ),
          ],
        ),
        decoration: BoxDecoration(
            color: DesignColors.primaryColor,
            //     border: Border.all(width: 25,color: DesignColors.gray1),
            borderRadius: BorderRadius.circular(5)),
      ),
    );

    ;
  }
}
