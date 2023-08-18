import 'package:berlitz/theme/colors.dart';
import 'package:flutter/material.dart';

class MyTextField extends StatefulWidget {
  final TextEditingController? controller;
  final String text;
  final bool? pass;

  const MyTextField({Key? key, this.controller, required this.text, this.pass})
      : super(key: key);

  @override
  State<MyTextField> createState() => _MyTextFieldState();
}

class _MyTextFieldState extends State<MyTextField> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        decoration: BoxDecoration(
            border: Border.all(color: DesignColors.grey, width: 1)),
        //height: 150,
        child: TextFormField(
          controller: widget.controller,
          obscureText:
              widget.pass == null || widget.pass == false ? false : true,

          //  keyboardType: const TextInputType.numberWithOptions(decimal: true),
          decoration: InputDecoration(
            isDense: true,
            filled: true,
            //
            fillColor: DesignColors.white,
            hintText: widget.text,
            border: InputBorder.none,

            hintStyle: TextStyle(
                //  color: mycolor.myhinttxt,
                fontSize: 20),
          ),
        ),
      ),
    );
  }
}
