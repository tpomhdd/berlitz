//Courses_Details
import 'package:flutter/material.dart';

import '../Client/Client.dart';
import '../Model/ActiveCourses.dart';
import '../Model/Couress.dart';
import '../Widget_main/Login_Widget/mytext.dart';
import '../Widget_main/myload.dart';
import '../theme/colors.dart';

class Courses_Details extends StatefulWidget {
  const Courses_Details({Key? key}) : super(key: key);

  @override
  State<Courses_Details> createState() => _Courses_DetailsState();
}

class _Courses_DetailsState extends State<Courses_Details> {
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
    return FutureBuilder(
        future: getData(),
        builder: (BuildContext context, AsyncSnapshot<dynamic> snapshot) {
          if (snapshot.hasData) {
            return ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: snapshot.data.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    alignment: Alignment.center,
                    width: 100,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: MyText(
                        text: snapshot.data[index].cid.toString(),
                        size: 16,
                        color: DesignColors.black,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: DesignColors.yellow2),
                  ),
                );
              },
            );
          } else
            return  myloading();
        });
  }
}
