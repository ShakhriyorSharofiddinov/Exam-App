import 'package:exam_result/teacher/teacher_home.dart';
import 'package:exam_result/teacher/teacher_profile.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class TeacherScreen extends StatefulWidget {
  TeacherScreen({Key? key}) : super(key: key);

  @override
  State<TeacherScreen> createState() => _TeacherScreenState();
}

class _TeacherScreenState extends State<TeacherScreen> {
  final user = FirebaseAuth.instance.currentUser!;

  // sign user out method
  void signUserOut() {
    FirebaseAuth.instance.signOut();
  }
  int _currentIndex = 0;
  List<Widget> list = [
    TeacherHomeScreen(),
    TeacherProfileScreen(),
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
            BottomNavigationBarItem(icon: Icon(Icons.people), label: "Guruhlar"),
            BottomNavigationBarItem(icon: Icon(Icons.person), label: "Profil"),
          ],
        ));
  }
}
