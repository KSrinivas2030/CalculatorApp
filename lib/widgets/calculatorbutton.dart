import 'package:flutter/material.dart';
import 'dart:core';

class calculatorbutton extends StatelessWidget {
   final String text;
  final int fillColor;
  final int TextColor;
  final double textSize;
  final Function callback;
   calculatorbutton({
   required this .text,
    required this.fillColor,
    required this.TextColor,
    required this.textSize,
    required this.callback,



});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10.0),
      child: SizedBox(width: 70,height: 70,child: FlatButton(
        shape:RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(5.0),
        ),
        child: Text(text,style: TextStyle(fontSize: 25),
        ),
        onPressed: ()=>callback(text),
        color: Color(fillColor),
        textColor: Color(TextColor),
      ),
      ),

    );
  }
}
