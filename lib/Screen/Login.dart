import 'package:berlitz/Client/Client.dart';
import 'package:berlitz/Widget_main/Login_Widget/Btn.dart';
import 'package:berlitz/Widget_main/Login_Widget/Logo.dart';
import 'package:berlitz/Widget_main/Login_Widget/mytext.dart';
import 'package:berlitz/Widget_main/Login_Widget/textfiled.dart';
import 'package:berlitz/theme/colors.dart';
import 'package:flutter/material.dart';

class Login_Screen extends StatefulWidget {
  const Login_Screen({Key? key}) : super(key: key);

  @override
  State<Login_Screen> createState() => _Login_ScreenState();
}

class _Login_ScreenState extends State<Login_Screen> {
  TextEditingController username = new TextEditingController();
  TextEditingController Password = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    //  username.text = "091656516";

    // Password.text = "123123";
    myClient.Cheak_Login('username');
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Logo_App(width: 250, height: 250),
            Padding(
              child: Row(
                children: [
                  MyText(
                    color: DesignColors.black,
                    text: 'Email',
                    size: 15,
                    fontWeight: FontWeight.w700,
                  )
                ],
              ),
              padding: const EdgeInsets.all(1.0),
            ),
            MyTextField(
              text: '',
              controller: username,
            ),
            SizedBox(
              height: 55,
            ),
            Padding(
              child: Row(
                children: [
                  MyText(
                    color: DesignColors.black,
                    text: 'Paassword',
                    size: 15,
                    fontWeight: FontWeight.w700,
                  )
                ],
              ),
              padding: const EdgeInsets.all(1.0),
            ),
            MyTextField(
              text: '',
              controller: Password,
              pass: true,
            ),
            MyButton(
              text: 'Login',
              onPressed: () {
//myClient.saveperf(username.text);

                myClient.Login(username.text, Password.text, context);
              },
            )
          ],
        ),
      ),
    );
  }
}
