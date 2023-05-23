import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class StudentHomeScreen extends StatefulWidget {
  StudentHomeScreen({Key? key}) : super(key: key);

  @override
  State<StudentHomeScreen> createState() => _StudentHomeScreenState();
}

class _StudentHomeScreenState extends State<StudentHomeScreen> {
  final user = FirebaseAuth.instance.currentUser!;

  // sign user out method
  void signUserOut() {
    FirebaseAuth.instance.signOut();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Student"),
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
