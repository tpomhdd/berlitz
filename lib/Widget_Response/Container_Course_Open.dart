import 'package:berlitz/Client/Client.dart';
import 'package:berlitz/Model/ActiveCourses.dart';
import 'package:berlitz/Widget_main/Home_Widget/Container_Course_Open.dart';
import 'package:berlitz/Widget_main/Login_Widget/mytext.dart';
import 'package:flutter/material.dart';

import '../Model/Couress.dart';
import '../Widget_main/myload.dart';

class Course_Open_Server extends StatefulWidget {
  const Course_Open_Server({Key? key}) : super(key: key);

  @override
  _Course_Open_ServerState createState() => _Course_Open_ServerState();
}

class _Course_Open_ServerState extends State<Course_Open_Server> {
  List<Course>? posts;
  var isLoaded = false;

  getData() async {
    posts = await myClient().getToOpenCourse();
    if (posts != null) {
      setState(() {
        isLoaded = true;
      });
    }
    return posts;
  }

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
//ToOpenCourse toOpenCourse=new ToOpenCourse(id: id,
// ageGroupId: ageGroupId, cid: cid, levelId: levelId, studentNumber: studentNumber,
// studentNumberV: studentNumberV, lessonsNumber: lessonsNumber,
// lessonsNumberV: lessonsNumberV, courseCost: courseCost,
// bookCost: bookCost, costV: costV, startDate: , endDate: endDate,
// endDateV: endDateV, visible: visible, createdAt: createdAt,
// updatedAt: updatedAt, teacher: teacher, description: description, lessons: lessons)
    return       FutureBuilder(
        future:myClient.getToOpenCourse2(),

        builder: (BuildContext context, AsyncSnapshot<dynamic> snapshot) {
          if (snapshot.hasData) {

            return snapshot.data.toString() == '[]'
                ? MyText(
                color: Colors.black,
                text: 'you don`t have to past coures',
                size: 12)
                :              ListView.builder(
                itemCount: snapshot.data.length ,
                physics: NeverScrollableScrollPhysics(),


                itemBuilder: (context, index) {

                  return

                    Column(
                      children: [
//                        snapshot.data[index]['levels'][0]['name'].contains(searchString)
                        Container_Open_Course(
                            start_dete: snapshot.data[index]['levels'][0]['to_open_courses'][0]['start_date'].toString(),
                            end_dete:snapshot.data[index]['levels'][0]['to_open_courses'][0]['end_date'].toString(),
                            Teacher: snapshot.data[index]['levels'][0]['to_open_courses'][0]['teacher'].toString(),
                            cost_book: snapshot.data[index]['levels'][0]['to_open_courses'][0]['book_cost'].toString(),
                            cost_course: snapshot.data[index]['levels'][0]['to_open_courses'][0]['course_cost'].toString(),
                            lang: snapshot.data[index]['lang'],
                            level:snapshot.data[index]['levels'][0]['name'].toString(),
                            lessons: snapshot.data[index]['levels'][0]['to_open_courses'][0]['lessons_number'].toString(),
                            details:snapshot.data[index]['levels'][0]['to_open_courses'][0]['description'].toString())
                      ],
                    );
                },);
          }
          else
            return myloading();
        }



    );
    ;
  }
}
