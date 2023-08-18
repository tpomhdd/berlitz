import 'package:flutter/material.dart';

import '../../Client/Client.dart';
import '../../Model/ActiveCourses.dart';
import '../../theme/colors.dart';

import '../Login_Widget/mytext.dart';
import '../myload.dart';
import 'Course_Details.dart';

class Course_Response extends StatefulWidget {
  const Course_Response({Key? key}) : super(key: key);

  @override
  State<Course_Response> createState() => _Course_ResponseState();
}

class _Course_ResponseState extends State<Course_Response> {
  int selected = 0;

  String start_dete = '';
  String end_dete = '';
  String Teacher = '';

  String cost_book = '';
  String cost_course = '';
  String lessons = '';
  String level = '';
  String searchString = '';
  List<ToOpenCourse>? posts;
  var isLoaded = false;

  getData() async {
//    posts = await myClient().getCourse();
    if (posts != null) {
      print(posts?[0].levelId);
      setState(() {
        isLoaded = true;
      });
    }
    return posts;
  }

  @override
  void initState() {
    selected = 0;
    // TODO: implement initState

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    setState(() {
      print("x" + start_dete);
    });

    selected == 0;

    return Container(
      alignment: Alignment.topLeft,
      child: Column(
        children: [
          Expanded(
              flex: 1,
              child: TextFormField(
                onChanged: (val) {
                  setState(() {
                    searchString = val;
                  });
                },
                decoration: InputDecoration(
                    hintText: 'Search on courses',
                    hintStyle: TextStyle(color: DesignColors.primaryColor),
                    icon: Icon(
                      Icons.search_sharp,
                      color: DesignColors.gray1,
                    )),
              )),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                alignment: Alignment.topLeft,
                child: MyText(
                  color: Colors.black,
                  text: 'To open Courses',
                  size: 18,
                  fontWeight: FontWeight.w800,
                ),
              ),
            ),
          ),
          Expanded(
            flex: 1,
            child: FutureBuilder(
                future: myClient.getToOpenCourse2(),
                builder:
                    (BuildContext context, AsyncSnapshot<dynamic> snapshot) {
                  if (snapshot.hasData) {
                    if (selected == 0) {
                    } else
                      null;

                    return Column(
                      children: [
                        Expanded(
                          flex: 5,
                          child: ListView.builder(
                            scrollDirection: Axis.horizontal,
                            itemCount: snapshot.data.length,
                            shrinkWrap: true,
                            physics: NeverScrollableScrollPhysics(),
                            itemBuilder: (context, index) {
                              return snapshot.data[index]['lang']
                                      .contains(searchString)
                                  ? Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: InkWell(
                                        onTap: () {
                                          setState(() {
                                            selected = index;
                                            print(selected.toString());

                                            start_dete = snapshot.data[index]
                                                    ['levels'][0]
                                                    ['to_open_courses'][0]
                                                    ['start_date']
                                                .toString();
                                            end_dete = snapshot.data[index]
                                                    ['levels'][0]
                                                    ['to_open_courses'][0]
                                                    ['end_date']
                                                .toString();
                                            Teacher = snapshot.data[index]
                                                    ['levels'][0]
                                                    ['to_open_courses'][0]
                                                    ['teacher']
                                                .toString();
                                            cost_book = snapshot.data[index]
                                                    ['levels'][0]
                                                    ['to_open_courses'][0]
                                                    ['book_cost']
                                                .toString();
                                            cost_course = snapshot.data[index]
                                                    ['levels'][0]
                                                    ['to_open_courses'][0]
                                                    ['course_cost']
                                                .toString();

                                            lessons = snapshot.data[index]
                                                    ['levels'][0]
                                                    ['to_open_courses'][0]
                                                    ['lessons_number']
                                                .toString();
                                            level = snapshot.data[index]
                                                    ['levels'][0]['name']
                                                .toString();
                                          });
                                        },
                                        child: Container(
                                          alignment: Alignment.center,
                                          width: 120,
                                          height: 85,
                                          child: Padding(
                                            padding: const EdgeInsets.all(4.0),
                                            child: MyText(
                                              text: snapshot.data[index]['lang']
                                                  .toString(),
                                              size: 16,
                                              color: DesignColors.black,
                                              fontWeight: FontWeight.w500,
                                            ),
                                          ),
                                          decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(30),
                                              color: selected == index
                                                  ? DesignColors.yellow2
                                                  : DesignColors.white,
                                              border: Border.all(
                                                  color: selected == index
                                                      ? DesignColors.white
                                                      : DesignColors.yellow3,
                                                  width: 2)),
                                        ),
                                      ),
                                    )
                                  : SizedBox();
                            },
                          ),
                        ),
                      ],
                    );
                  } else
                    return myloading();
                }),
          ),
          Expanded(
            flex: 5,
            child: ExpansionTile(
              title: MyText(
                color: DesignColors.primaryColor,
                text: level,
                size: 25,
                fontWeight: FontWeight.w500,
              ),
              children: <Widget>[
                Course_Details(
                    start_dete: start_dete,
                    end_dete: end_dete,
                    Teacher: Teacher,
                    cost_book: cost_book,
                    cost_course: cost_course,
                    lessons: lessons),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
