//Course_Past_List_contianer

import 'package:flutter/material.dart';

//Course_Past_List_contianer
import 'package:berlitz/theme/colors.dart';
import 'package:flutter/material.dart';
import 'package:berlitz/Client/Client.dart';

import '../Model/Couress.dart';
import '../Widget_main/Home_Widget/Container_Course.dart';
import '../Widget_main/Login_Widget/mytext.dart';
import '../Widget_main/myload.dart';

class Course_Past_List_contianer_Serv extends StatefulWidget {
  const Course_Past_List_contianer_Serv({Key? key}) : super(key: key);

  @override
  State<Course_Past_List_contianer_Serv> createState() =>
      _Course_Past_List_contianer_ServState();
}

class _Course_Past_List_contianer_ServState
    extends State<Course_Past_List_contianer_Serv> {
  List<Course>? CourseList;
  var isLoaded = false;

  getData() async {
    CourseList = await myClient().getPast_Course();

    return CourseList;
  }

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
 Course x=new   Course();
//x.level.lang.lang
   // x.description
    return FutureBuilder(
        future: getData(),
        builder: (BuildContext context, AsyncSnapshot<dynamic> snapshot) {
          if (snapshot.hasData) {

            return snapshot.data.toString() == '[]'
                ? MyText(
                color: Colors.black,
                text: 'you don`t have to past coures',
                size: 12)
                :  ListView.builder(
              physics: NeverScrollableScrollPhysics(),

              itemCount: snapshot.data.length,
              itemBuilder: (context, index) {
                return Container_Course(
                  id: snapshot.data[index].id.toString(),
                  start_dete: snapshot.data[index].startDate.toString(),
                  end_dete: snapshot.data[index].endDate.toString(),
                  Teacher: snapshot.data[index].teacher.toString(),
                  lang: snapshot.data[index].level.lang.lang.toString(),
                  lessons: snapshot.data[index].lessonsNumber.toString(),
                  level: snapshot.data[index].level.name.toString(),
                  details: snapshot.data[index].description.toString(), lessons2: '',

                  Color_Course: DesignColors.gray1,
                );
//                      MyText(color: Colors.black, text:  snapshot.data[index].description.toString(), size: 20);
              },
            );
          } else
            return  myloading();
        });
  }
}
