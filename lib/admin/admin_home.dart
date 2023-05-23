import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:exam_result/admin/teacher.dart';
import 'package:exam_result/admin/student.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class AdminHomeScreen extends StatefulWidget {
  AdminHomeScreen({Key? key}) : super(key: key);

  @override
  State<AdminHomeScreen> createState() => _AdminHomeScreenState();
}

class _AdminHomeScreenState extends State<AdminHomeScreen> {
  final user = FirebaseAuth.instance.currentUser!;

  // sign user out method
  void signUserOut() {
    FirebaseAuth.instance.signOut();
  }

  int _currentIndex = 0;
  List<Widget> list = [
    AdminTeachersList(),
    AdminStudentsList(),
  ];

  //
  // user add
  //
  // user data
  //
  // student
  // email
  // tel nomer
  // password
  // ism
  // surname
  // classes
  // image
  // exams
  //
  // techer
  // email
  // tel nomer
  // password
  // ism
  // surname
  // image
  // classes
  // students

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text("Admin"),
          actions: [
            IconButton(onPressed: (){FirebaseAuth.instance.signOut();}, icon: Icon(Icons.logout))
          ],
        ),
        body: list[_currentIndex],
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: _currentIndex,
          onTap: (int newIndex) {
           setState(() {
             _currentIndex = newIndex;
           });
          },
          selectedItemColor: Colors.white,
          backgroundColor: Colors.blue,
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.person), label: "Teachers"),
            BottomNavigationBarItem(icon: Icon(Icons.person), label: "Students"),
          ],
        ));
  }
}
