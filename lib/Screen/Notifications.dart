import 'package:berlitz/Widget_main/buttom_bar.dart';
import 'package:berlitz/theme/colors.dart';
import 'package:flutter/material.dart';

import '../Widget_Response/Container_Notifications.dart';
import '../Widget_main/Notifications_Widgets/Notifications_Contianer.dart';

class Notifications_Screen extends StatefulWidget {
  const Notifications_Screen({Key? key}) : super(key: key);

  @override
  State<Notifications_Screen> createState() => _Notifications_ScreenState();
}

class _Notifications_ScreenState extends State<Notifications_Screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: buttom_bar(indexx: 2),
        backgroundColor: DesignColors.gray,
        body: Container_Notifications());
  }
}
