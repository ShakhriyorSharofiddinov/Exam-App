import 'package:exam_result/admin/admin_add_student.dart';
import 'package:exam_result/admin/admin_add_teacher.dart';
import 'package:flutter/material.dart';

class AdminStudentsList extends StatelessWidget {
  const AdminStudentsList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Text("Student"),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(context, MaterialPageRoute(builder: (_) => AdminAddStudent()));
        },
        child: Icon(
          Icons.add,
        ),
      ),
    );
  }
}
