import 'package:flutter/material.dart';

class AdminAddStudent extends StatefulWidget {
  const AdminAddStudent({Key? key}) : super(key: key);

  @override
  State<AdminAddStudent> createState() => _AdminAddStudentState();
}

class _AdminAddStudentState extends State<AdminAddStudent> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("O'qituvchi qo'shish"),
      ),
      body: Container(),
    );
  }
}
