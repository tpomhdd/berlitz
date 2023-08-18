import 'package:berlitz/Widget_main/Login_Widget/mytext.dart';
import 'package:berlitz/Widget_main/MyImg.dart';
import 'package:berlitz/theme/colors.dart';
import 'package:flutter/material.dart';

class Notifications_Contianer extends StatefulWidget {
  final String mytext;
  final String mydete;
  final String short_dete;

  const Notifications_Contianer(
      {Key? key,
      required this.mytext,
      required this.short_dete,
      required this.mydete})
      : super(key: key);

  @override
  State<Notifications_Contianer> createState() =>
      _Notifications_ContianerState();
}

class _Notifications_ContianerState extends State<Notifications_Contianer> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.max,
      children: [
        Expanded(
          flex: 1,
          child: Padding(
            padding: EdgeInsets.all(8.0),
            child: MyImg(
              url: 'assets/nofi.jpg',
              width: 50,
              height: 50,
            ),
          ),
        ),
        Expanded(
          flex: 3,
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,

                  children: [
                  
                    


                    MyText(
                        color: DesignColors.gray3,
                        text: widget.short_dete.toString(),
                        size: 14),
                  
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: MyText(
                      color: Colors.black,
                      text: widget.mytext,
                      size: 20,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              )
            ],
          ),
        )
      ],
    );
  }
}
