import 'package:berlitz/Screen/Courses.dart';
import 'package:berlitz/Screen/HomeScreen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../Screen/Notifications.dart';
import '../theme/colors.dart';
import 'Login_Widget/mytext.dart';
import 'Svg.dart';
class buttom_bar extends StatefulWidget {
final int indexx;
  const buttom_bar({Key? key,  required this.indexx}) : super(key: key);

  @override
  State<buttom_bar> createState() => _buttom_barState();
}

class _buttom_barState extends State<buttom_bar> {
  int index=5;
  @override
  Widget build(BuildContext context) {
    return     Container(
      decoration: BoxDecoration(
color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 5,
            blurRadius: 27,
            offset: Offset(0, 3),

          )],


        borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20),
              topRight: Radius.circular(20)
          )
      ),

      width: double.infinity,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          children: [


            Expanded(
              child: InkWell(
                onTap: (){

                  Get.to(HomeScreen(),transition: Transition.leftToRight);
                },
                child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [

                      Svg_img(assetName:widget.indexx==0? 'home_active.svg':'home.svg',),
                      MyText(color: DesignColors.primaryColor, text: 'Home', size: 13,fontWeight: FontWeight.w600
                        ,),
                    ]              ),
              ),
            ),

            Expanded(
              child: InkWell(
                onTap: (){setState(() {
                  index=1;
                });

                Get.to(Courses(),transition: Transition.leftToRight);},
                child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [

                      Svg_img(assetName:widget.indexx==1? 'courses_active.svg':'courses.svg',),
                      MyText(color: DesignColors.primaryColor, text: 'courses', size: 13,fontWeight: FontWeight.w600
                        ,),
                    ]              ),
              ),
            ),

            Expanded(
              child: InkWell(
                onTap: (){
                  setState(() {
                    index=2;
                  });
                  Get.to(Notifications_Screen(),transition: Transition.leftToRight);
                },
                child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [

                      Svg_img(assetName:widget.indexx==2? 'notification_active.svg':'notification.svg',),
                      MyText(color: DesignColors.primaryColor, text: 'notification', size: 13,fontWeight: FontWeight.w600
                        ,),
                    ]              ),
              ),
            ),
          ],
        ),
      ),

    );
  }
}
