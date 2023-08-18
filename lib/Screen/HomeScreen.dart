import 'dart:io';

import 'package:berlitz/Widget_main/Login_Widget/mytext.dart';
import 'package:berlitz/data.dart';
import 'package:berlitz/theme/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'package:berlitz/Client/Client.dart';

import '../Widget_Response/Course_Past_List.dart';
import '../Widget_Response/active_courses_contianer.dart';
import '../Widget_main/Home_Widget/Container_Course.dart';
import '../Widget_main/Home_Widget/Container_Course_Open.dart';
import '../Widget_main/Home_Widget/Continer_Top.dart';
import '../Widget_main/Svg.dart';
import '../Widget_main/buttom_bar.dart';
import 'package:berlitz/Widget_Response/Container_Course_Open.dart';

import '../Widget_main/myappbar.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        exit(0);
      },
      child: Scaffold(
        bottomNavigationBar: buttom_bar(
          indexx: 0,
        ),
        backgroundColor: DesignColors.gray,
        appBar: PreferredSize(
            preferredSize: Size.fromHeight(50), child: myappbar()),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                child: Container_Top(),
              ),
              SizedBox(
                height: 10,
              ),
              MyText(
                color: Colors.black,
                text: 'Active course',
                size: 18,
                fontWeight: FontWeight.w500,
              ),
              Container(height: 400, child: active_courses_contianer_Serv()),
              MyText(
                color: Colors.black,
                text: 'To open course',
                size: 18,
                fontWeight: FontWeight.w500,
              ),
              Container(height: 400, child: Course_Open_Server()),
              SizedBox(
                height: 40,
              ),
              MyText(
                color: Colors.black,
                text: 'Past course',
                size: 18,
                fontWeight: FontWeight.w500,
              ),
              Container(height: 400, child: Course_Past_List_contianer_Serv())
            ],
          ),
        ),
      ),
    );
  }
}
