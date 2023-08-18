//active_courses_contianer
import 'package:intl/intl.dart';

import 'package:flutter/material.dart';

//active_courses_contianer
import 'package:berlitz/theme/colors.dart';
import 'package:flutter/material.dart';
import 'package:berlitz/Client/Client.dart';

import '../Model/Couress.dart';
import '../Widget_main/Home_Widget/Container_Course.dart';
import '../Widget_main/Login_Widget/mytext.dart';
import '../Widget_main/myload.dart';

class active_courses_contianer_Serv extends StatefulWidget {
  const active_courses_contianer_Serv({Key? key}) : super(key: key);

  @override
  State<active_courses_contianer_Serv> createState() =>
      _active_courses_contianer_ServState();
}

class _active_courses_contianer_ServState
    extends State<active_courses_contianer_Serv> {
  List<Course>? CourseList;
  var isLoaded = false;

  getData() async {
    CourseList = await myClient().getCourse();

    return CourseList;
  }

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {


    return   FutureBuilder(
        future:myClient.ggetCourse(),

        builder: (BuildContext context, AsyncSnapshot<dynamic> snapshot) {
          if (snapshot.hasData) {

            return snapshot.data.toString() == '[]'
                ? MyText(
                color: Colors.black,
                text: 'you don`t have to past coures',
                size: 12)
                :              ListView.builder(
                itemCount:
                snapshot.data.length-1,
                physics: NeverScrollableScrollPhysics(),


                itemBuilder: (context, index) {

                  return



                    Container_Course(
                      id:snapshot.data['data']['active_courses']
                      [index]['id'].toString(),
                      start_dete: snapshot.data['data']['active_courses']
                      [index]['start_date'].toString(),
                      end_dete: snapshot.data['data']['active_courses']
                      [index]['end_date'].toString(),
                      Teacher:snapshot.data['data']['active_courses']
                      [index]['teacher'].toString(),
                      lang:
                      snapshot.data['data']['active_courses']
                      [index]['level']['lang']['lang'].toString(),
                      lessons: snapshot.data['data']['active_courses']
                      [index]['lessons_number'].toString(),

                      lessons2: 'Lessons',


                      level:
                      snapshot.data['data']['active_courses']
                      [index]['level']['name'].toString(),//snapshot.data[index].levelId.toString(),
                      details: snapshot.data['data']['active_courses']
                      [index]
                      ['description'].toString(), Color_Course: DesignColors.yellow3,
                    );
                },);
          }
          else
            return myloading();
        }



    );
  }
}
