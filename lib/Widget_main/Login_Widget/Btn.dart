import 'package:berlitz/theme/colors.dart';
import 'package:flutter/material.dart';

class MyButton extends StatefulWidget {
  final String text;
  final void Function()? onPressed;

  const MyButton({Key? key, required this.text, this.onPressed})
      : super(key: key);

  @override
  State<MyButton> createState() => _MyButtonState();
}

class _MyButtonState extends State<MyButton> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
          width: double.infinity,
          decoration: BoxDecoration(
              color: DesignColors.primaryColor,
              borderRadius: BorderRadius.circular(20)),
          child: MaterialButton(
            child: Text(
              widget.text,
              style: TextStyle(color: Colors.white),
            ),
            onPressed: widget.onPressed,
          )),
    );
  }
}
