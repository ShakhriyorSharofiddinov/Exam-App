import 'package:exam_result/admin/teacher.dart';
import 'package:exam_result/admin/student.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import 'admin_profile.dart';

class AdminHomeScreen extends StatefulWidget {
  const AdminHomeScreen({Key? key}) : super(key: key);

  @override
  State<AdminHomeScreen> createState() => _AdminHomeScreenState();
}

class _AdminHomeScreenState extends State<AdminHomeScreen> {
  final user = FirebaseAuth.instance.currentUser!;

  void signUserOut() {
    FirebaseAuth.instance.signOut();
  }

  int _currentIndex = 0;
  List<Widget> list = [
    AdminTeachersList(),
    AdminStudentsList(),
    AdminProfileScreen()
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
          unselectedItemColor: Colors.grey,
          selectedItemColor: Colors.blue,
          backgroundColor: Colors.black,
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.people), label: "O'qituvchilar"),
            BottomNavigationBarItem(icon: Icon(Icons.people), label: "O'quvchilar"),
            BottomNavigationBarItem(icon: Icon(Icons.person), label: "Profil"),
          ],
        ));
  }
}
