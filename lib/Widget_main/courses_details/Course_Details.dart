import '../../../theme/colors.dart';
import '../Login_Widget/mytext.dart';
import '../Svg.dart';
import 'package:flutter/material.dart';

class Course_Details extends StatefulWidget {
  final String start_dete;
  final String end_dete;
  final String Teacher;

  final String cost_book;
  final String cost_course;
  final String lessons;

  const Course_Details(
      {Key? key,
      required this.start_dete,
      required this.end_dete,
      required this.Teacher,
      required this.cost_book,
      required this.cost_course,
      required this.lessons})
      : super(key: key);

  @override
  State<Course_Details> createState() => _Course_DetailsState();
}

class _Course_DetailsState extends State<Course_Details> {
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
      ),
    );
  }
}
