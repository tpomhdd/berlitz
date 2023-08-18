import 'package:flutter/material.dart';

import '../../theme/colors.dart';
import '../Login_Widget/mytext.dart';
import '../Svg.dart';

class Contiainer_Lessons extends StatefulWidget {
  final String start_dete;
  final String time_form;
  final String time_to;

  const Contiainer_Lessons(
      {Key? key,
      required this.start_dete,
      required this.time_form,
      required this.time_to})
      : super(key: key);

  @override
  State<Contiainer_Lessons> createState() => _Contiainer_LessonsState();
}

class _Contiainer_LessonsState extends State<Contiainer_Lessons> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
//        height: 100,
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
            Row(
              //mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Svg_img(assetName: 'calendar.svg'),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: MyText(
                      color: Colors.black,
                      text: '${widget.start_dete}',
                      size: 12),
                )
              ],
            ),
            Row(
              //mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                    child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Svg_img(assetName: 'calendar.svg'),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: MyText(
                          color: Colors.black,
                          text: 'FORM: ${widget.time_form}',
                          size: 12),
                    )
                  ],
                )),
                Expanded(
                    child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Svg_img(assetName: 'calendar.svg'),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: MyText(
                          color: Colors.black,
                          text: '${widget.time_to}',
                          size: 12),
                    )
                  ],
                )),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
