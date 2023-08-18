import 'package:flutter/material.dart';

import '../theme/colors.dart';
import 'Login_Widget/mytext.dart';
class search extends StatelessWidget {
  const search({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  TextFormField(
      decoration: InputDecoration(
          hintText:  'Search on courses',
          hintStyle: TextStyle(color:DesignColors.primaryColor),
          icon: Icon(

            Icons.search_sharp,
            color: DesignColors.gray1,
          )),

    );
  }
}
