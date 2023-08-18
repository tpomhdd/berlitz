import 'package:flutter/material.dart';
import 'package:berlitz/Client/Client.dart';

import 'Login_Widget/mytext.dart';
import 'myload.dart';
class getuser extends StatefulWidget {
  const getuser({Key? key}) : super(key: key);

  @override
  State<getuser> createState() => _getuserState();
}

class _getuserState extends State<getuser> {
  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: myClient.getuser(),
        builder: (BuildContext context, AsyncSnapshot<dynamic> snapshot) {
          if (snapshot.hasData) {
            return MyText(
                color: Colors.black,
                text: "Hello" +" "+
                    snapshot.data['first_name'].toString() +
                    " " +
                    snapshot.data['last_name'].toString(),
                size: 17);
          } else
            return myloading();
        });
  }
}
