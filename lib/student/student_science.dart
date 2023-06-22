import 'package:exam_result/student/student_detail.dart';
import 'package:flutter/material.dart';

import '../widget/text_style.dart';

class StudentScienceScreen extends StatelessWidget {
  const StudentScienceScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      drawer: Drawer(
        backgroundColor: Colors.blue,
      ),
      appBar: AppBar(
        title: Text(
          "Exam Result",
          style: TextStyle(color: Colors.blue),
        ),
        actions: [
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.notifications_none,
                color: Colors.blue,
              ))
        ],
        backgroundColor: Colors.black,
        elevation: 0,
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 30,right: 30,top: 30, bottom: 10),
            child: ElevatedButton(
              onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (_)=> StudentDetail("Matematika",80)));
              },
              style: ElevatedButton.styleFrom(
                foregroundColor: Colors.grey,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20)),
                backgroundColor: Colors.red,
                minimumSize: Size(double.infinity, 70),
              ),
              child: Align(
                child: Padding(
                  padding: const EdgeInsets.only(top: 8.0),
                  child: MyText(
                    "Matematika",
                    Colors.white,
                    30,
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
                Navigator.push(context, MaterialPageRoute(builder: (_)=> StudentDetail("Fizika",50)));
              },
              style: ElevatedButton.styleFrom(
                foregroundColor: Colors.grey,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20)),
                backgroundColor: Colors.yellow,
                minimumSize: Size(double.infinity, 70),
              ),
              child: const Align(
                child: Padding(
                  padding: EdgeInsets.only(top: 8.0),
                  child: MyText(
                    "Fizika",
                    Colors.white,
                    30,
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
                Navigator.push(context, MaterialPageRoute(builder: (_)=> StudentDetail("Ingliz tili",90)));
              },
              style: ElevatedButton.styleFrom(
                foregroundColor: Colors.grey,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20)),
                backgroundColor: Colors.blue,
                minimumSize: Size(double.infinity, 70),
              ),
              child: Align(
                child: Padding(
                  padding: const EdgeInsets.only(top: 8.0),
                  child: MyText(
                    "Ingliz tili",
                    Colors.white,
                    30,
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
