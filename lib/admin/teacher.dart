import 'package:exam_result/admin/admin_add_student.dart';
import 'package:exam_result/admin/admin_add_teacher.dart';
import 'package:flutter/material.dart';

class AdminTeachersList extends StatelessWidget {
  const AdminTeachersList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Text("Teacher"),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (_) => AdminAddTeacher()));
          },
          child: Icon(
            Icons.add,
          ),
        ));
  }
}
