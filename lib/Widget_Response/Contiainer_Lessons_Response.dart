//Contiainer_Lessons_Response

import 'package:berlitz/Widget_main/Login_Widget/mytext.dart';
import 'package:berlitz/Widget_main/courses_details/Contiainer_Lessons.dart';
import 'package:berlitz/theme/colors.dart';
import 'package:flutter/material.dart';
import 'package:berlitz/Client/Client.dart';

import '../Widget_main/myload.dart';

class Contiainer_Lessons_Response extends StatefulWidget {
  final String id;

  const Contiainer_Lessons_Response({Key? key, required this.id})
      : super(key: key);

  @override
  State<Contiainer_Lessons_Response> createState() =>
      _Contiainer_Lessons_ResponseState();
}

class _Contiainer_Lessons_ResponseState
    extends State<Contiainer_Lessons_Response> {
  @override
  Widget build(BuildContext context) {
//course_id
    return FutureBuilder(
        future: myClient.Listlessons(),
        builder: (BuildContext context, AsyncSnapshot<dynamic> snapshot) {
          if (snapshot.hasData) {
            return ListView.builder(
                itemCount: snapshot.data.length-1,
                itemBuilder: (context, index) {
                  return snapshot.data[index]['course_id'].toString() ==
                          '${widget.id}'
                      ? Column(
                          children: [


                            Contiainer_Lessons(
                              start_dete:
                                  snapshot.data[index]['date'].toString(),
                              time_form:
                                  snapshot.data[index]['from'].toString(),
                              time_to: snapshot.data[index]['to'].toString(),
                            )
                          ],
                        )
                      :
SizedBox();

                  //return MyText(color: Colors.black, text: snapshot.data[index]['lang'].toString(), size: 20);
                  // return MyText(color: Colors.black, text: snapshot.data[index]['id'].toString(), size: 20);
                });
          } else
            return  Container(
                alignment: Alignment.topCenter,
                child: myloading());
        });
  }
}
