import 'package:exam_result/student/student_home.dart';
import 'package:exam_result/student/student_profile.dart';
import 'package:exam_result/student/student_science.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class StudentScreen extends StatefulWidget {
  StudentScreen({Key? key}) : super(key: key);

  @override
  State<StudentScreen> createState() => _StudentScreenState();
}

class _StudentScreenState extends State<StudentScreen> {
  final user = FirebaseAuth.instance.currentUser!;

  int _currentIndex = 0;
  List<Widget> list = [
    StudentScienceScreen(),
    StudentHomeScreen(),
    StudentProfileScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: list[_currentIndex],
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: _currentIndex,
          onTap: (int newIndex) {
            setState(() {
              _currentIndex = newIndex;
            });
          },
          elevation: 0,
          unselectedItemColor: Colors.grey,
          selectedItemColor: Colors.blue,
          backgroundColor: Colors.black,
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.menu_book), label: "Fanlarim"),
            BottomNavigationBarItem(icon: Icon(Icons.library_books), label: "Oxirgi imtixonlarim"),
            BottomNavigationBarItem(icon: Icon(Icons.person), label: "Profil"),
          ],
        ));
  }
}
