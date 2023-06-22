import 'package:exam_result/teacher/teacher_students.dart';
import 'package:flutter/material.dart';

import '../student/student_detail.dart';
import '../widget/text_style.dart';

class TeacherHomeScreen extends StatelessWidget {
  const TeacherHomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: Text(
        "Exam Result",
        style: TextStyle(color: Colors.blue),
      ),
        backgroundColor: Colors.black,
        elevation: 0,
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 30,right: 30,top: 10, bottom: 10),
            child: ElevatedButton(
              onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (_)=> TeacherStudents("A1 guruh o'quvchilari")));
              },
              style: ElevatedButton.styleFrom(
                foregroundColor: Colors.grey,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20)),
                backgroundColor: Colors.deepOrange,
                minimumSize: Size(double.infinity, 50),
              ),
              child: Align(
                child: Padding(
                  padding: const EdgeInsets.only(top: 8.0),
                  child: MyText(
                    "A1 guruh",
                    Colors.white,
                    24,
                  ),
                ),
                alignment: Alignment.center,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 30,right: 30,top: 10, bottom: 10),
            child: ElevatedButton(
              onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (_)=> TeacherStudents("A2 guruh o'quvchilari")));
              },
              style: ElevatedButton.styleFrom(
                foregroundColor: Colors.grey,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20)),
                backgroundColor: Colors.blue,
                minimumSize: Size(double.infinity, 50),
              ),
              child: Align(
                child: Padding(
                  padding: const EdgeInsets.only(top: 8.0),
                  child: MyText(
                    "A2 guruh",
                    Colors.white,
                    24,
                  ),
                ),
                alignment: Alignment.center,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
