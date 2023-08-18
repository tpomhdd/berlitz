//Container_Notifications

import 'package:berlitz/Client/Client.dart';
import 'package:berlitz/Model/ActiveCourses.dart';
import 'package:berlitz/Model/Notifications.dart';
import 'package:berlitz/Widget_main/Login_Widget/mytext.dart';
import 'package:flutter/material.dart';

import '../Widget_main/Notifications_Widgets/Notifications_Contianer.dart';
import '../Widget_main/myload.dart';

class Container_Notifications extends StatefulWidget {
  const Container_Notifications({Key? key}) : super(key: key);

  @override
  _Container_NotificationsState createState() =>
      _Container_NotificationsState();
}

class _Container_NotificationsState extends State<Container_Notifications> {
  List<myNotifications>? CourseList;
  var isLoaded = false;

  getData() async {
    CourseList = await myClient().getmyNotifications();

    return CourseList;
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
              itemCount: snapshot.data.length,
              itemBuilder: (context, index) {
                return Notifications_Contianer(
                  mytext: snapshot.data[index].message.toString(),
                  short_dete: snapshot.data[index].createdAt.toString(),
                  mydete: '',
                );
              },
            );
          } else
            return Center(child: myloading());
        });
  }
}
