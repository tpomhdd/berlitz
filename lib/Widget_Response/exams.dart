import 'package:berlitz/Client/Client.dart';
import 'package:berlitz/Widget_main/myload.dart';
import 'package:flutter/material.dart';

import '../Widget_main/courses_details/course_exams.dart';
class exams extends StatefulWidget {
  final String id;
  const exams({Key? key, required this.id}) : super(key: key);

  @override
  State<exams> createState() => _examsState();
}

class _examsState extends State<exams> {
  @override
  Widget build(BuildContext context) {
    return
      FutureBuilder(
          future:myClient.ggetCourse(),

          builder: (BuildContext context, AsyncSnapshot<dynamic> snapshot) {
            if (snapshot.hasData) {
              return
                ListView.builder(
                  itemCount: snapshot.data.length-1,
                  physics: NeverScrollableScrollPhysics(),


                  itemBuilder: (context, index) {

                    return

                      snapshot.data['data']['active_courses']
                      [index]['pivot']['course_id'].toString()=="98"?

                      Column(
                        children: [

                          course_exams(exams: 'Verbal exam', examstxt:
                          snapshot.data['data']['active_courses']
                          [index]['pivot']['verbal'].toString()=='null'?'--':
                          snapshot.data['data']['active_courses']
                          [index]['pivot']['verbal'].toString()
                          ),
                          course_exams(exams: 'Writing exam', examstxt:    snapshot.data['data']['active_courses']
                          [index]['pivot']['writing'].toString()=='null'?'--':
                          snapshot.data['data']['active_courses']
                          [index]['pivot']['writing'].toString()
                            ,),
                          course_exams(exams: 'Attendance exam', examstxt:    snapshot.data['data']['active_courses']
                          [index]['pivot']['attendance'].toString()=='null'?'--':
                          snapshot.data['data']['active_courses']
                          [index]['pivot']['attendance'].toString()
                            ,),
                          course_exams(exams: 'Participation exam', examstxt:    snapshot.data['data']['active_courses']
                          [index]['pivot']['participation'].toString()=='null'?'--':
                          snapshot.data['data']['active_courses']
                          [index]['pivot']['participation'].toString()
                            ,),
                          course_exams(exams: 'Homework exam', examstxt:    snapshot.data['data']['active_courses']
                          [index]['pivot']['homework'].toString()=='null'?'--':
                          snapshot.data['data']['active_courses']
                          [index]['pivot']['homework'].toString()
                            ,),
                        ],
                      ):SizedBox();
                  },);
            }
            else
              return myloading();
          }



      );
  }
}
