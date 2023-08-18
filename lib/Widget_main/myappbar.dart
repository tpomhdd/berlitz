import 'package:berlitz/Widget_main/getuser.dart';
import 'package:berlitz/Widget_main/myload.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../Client/Client.dart';
import '../theme/colors.dart';
import 'Login_Widget/mytext.dart';
import 'Svg.dart';

class myappbar extends StatefulWidget {
  const myappbar({Key? key}) : super(key: key);

  @override
  State<myappbar> createState() => _myappbarState();
}

class _myappbarState extends State<myappbar> {
  String val = '';

  @override
  Widget build(BuildContext context) {
    setState(() {
      //   val=myClient().getperf('user').toString();

      getperf(val);
    });
    return AppBar(
      title: getuser(),
      leading: Image.asset("assets/svgs/tt.png"),
      backgroundColor: DesignColors.gray2,
      actions: [
        InkWell(
          onTap: (){
            myClient.LogOut();
          },
          child: Svg_img(
            assetName: "logout.svg",
          ),
        )
      ],
    );
  }
}

getperf(String username) async {
  SharedPreferences preferences = await SharedPreferences.getInstance();
  username = preferences.getString('user').toString() as String;
  return username;
}
