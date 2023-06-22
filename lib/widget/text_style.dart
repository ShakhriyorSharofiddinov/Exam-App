import 'dart:ffi';

import 'package:flutter/material.dart';

class MyText extends StatelessWidget {
  final String text;
  final Color color;
  final double size;
  const MyText(this.text,this.color,this.size,{Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        color: color,
        fontSize: size ,
      ),
    );
  }
}
