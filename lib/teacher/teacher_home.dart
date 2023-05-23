import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class TeacherHomeScreen extends StatefulWidget {
  TeacherHomeScreen({Key? key}) : super(key: key);

  @override
  State<TeacherHomeScreen> createState() => _TeacherHomeScreenState();
}

class _TeacherHomeScreenState extends State<TeacherHomeScreen> {
  final user = FirebaseAuth.instance.currentUser!;

  // sign user out method
  void signUserOut() {
    FirebaseAuth.instance.signOut();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Teacher"),
        actions: [
          IconButton(
              onPressed: () {
                signUserOut();
              },
              icon: Icon(Icons.logout))
        ],
      ),
      body: Column(
        children: [
          Text(user.email.toString()),
        ],
      ),
    );
  }
}
